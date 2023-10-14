import json
from io import BytesIO
import os

import numpy as np
import tensorflow as tf
import uvicorn
from PIL import Image
from fastapi import FastAPI, UploadFile, File

app = FastAPI()

MODEL_PROD = tf.keras.models.load_model("../../models/9")
MODEL_BETA = tf.keras.models.load_model("../../models/10")

class_name_file = (
    "./config/class_names.txt"
    if os.path.exists("./config/class_names.txt")
    else "./../config/class_names.txt"
)

with open(class_name_file, "r") as f:
    CLASS_NAMES = json.load(f)


@app.get("/ping")
async def ping():
    return "Hello, I am alive"


def read_file_as_image(data) -> np.ndarray:
    return np.array(Image.open(BytesIO(data)))


@app.get("/dog-breed/v1/breeds")
async def breeds():
    return CLASS_NAMES


@app.post("/dog-breed/v1/predict")
async def predict(file: UploadFile = File(...)):
    image = read_file_as_image(await file.read())
    image_batch = np.expand_dims(image, 0)
    predictions = MODEL_BETA.predict(image_batch)
    class_name = CLASS_NAMES[np.argmax(predictions[0])]
    confidence = np.max(predictions[0])
    return {"class": class_name, "confidence": float(confidence)}


def a(rooms):
    nextRooms = np.zeros(len(rooms))

    for i in range(1, rooms.length):
        nextRooms[i] = 1 if rooms[i - 1] == rooms[i + 1] else 0
    return nextRooms


if __name__ == "__main__":
    uvicorn.run(app, port=8080)
