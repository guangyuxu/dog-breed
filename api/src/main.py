import json
import os
from io import BytesIO

import numpy as np
import requests
import uvicorn
from PIL import Image
from fastapi import FastAPI, UploadFile, File
from fastapi.middleware.cors import CORSMiddleware

from parameters import init_parameters
import tensorflow as tf

app = FastAPI()

# Set up CORS middleware
app.add_middleware(
    CORSMiddleware,
    # You might want to replace "*" with the specific origins you want to allow
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],  # You can specify specific HTTP methods (GET, POST, etc.) here
    allow_headers=["*"],  # You can specify specific HTTP headers here
)


(port, endpoint) = init_parameters()
print(endpoint)

class_name_file = (
    "./config/class_names.txt"
    if os.path.exists("./config/class_names.txt")
    else "./../config/class_names.txt"
)
with open(class_name_file, "r") as f:
    print(f"Load class names from {class_name_file}")
    CLASS_NAMES = json.load(f)

MODEL = tf.keras.models.load_model("../../models/10")


@app.get("/")
async def ping():
    return "dog breed"


@app.get("/ping")
async def ping():
    return "I am alive"


def read_file_as_image(data) -> np.ndarray:
    image = Image.open(BytesIO(data))
    rgb = image.convert("RGB").resize((224, 224))
    return np.array(rgb)


@app.get("/dog-breed/v1/breeds")
async def breeds():
    return CLASS_NAMES


@app.post("/dog-breed/v2/predict")
async def predictFromModelServer(file: UploadFile = File(...)):
    image = read_file_as_image(await file.read())
    image_batch = np.expand_dims(image, 0)

    json_data = {"instances": image_batch.tolist()}
    response = requests.post(endpoint, json=json_data)
    print(response.json())
    predictions = np.array(response.json()["predictions"][0])
    class_name = CLASS_NAMES[np.argmax(predictions)]
    confidence = np.max(predictions)
    return {"class": class_name, "confidence": float(confidence)}


@app.post("/dog-breed/v1/predict")
async def predictFromModelLocal(file: UploadFile = File(...)):
    image = read_file_as_image(await file.read())
    image_batch = np.expand_dims(image, 0)
    predictions = MODEL.predict(image_batch)
    class_name = CLASS_NAMES[np.argmax(predictions[0])]
    confidence = np.max(predictions[0])
    print(class_name, confidence)
    return {"class": class_name, "confidence": float(confidence)}


if __name__ == "__main__":
    uvicorn.run(app, port=port)
