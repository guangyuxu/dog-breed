import json
from io import BytesIO

import numpy as np
import tensorflow as tf
import uvicorn
from PIL import Image
from fastapi import FastAPI, UploadFile, File

app = FastAPI()

MODEL_PROD = tf.keras.models.load_model("../models/8")
MODEL_BETA = tf.keras.models.load_model("../models/9")
with open("./../class_names.txt", 'r') as f:
    CLASS_NAMES = json.load(f)


@app.get("/ping")
async def ping():
    return 'Hello, I am alive'


def read_file_as_image(data) -> np.ndarray:
    return np.array(Image.open(BytesIO(data)))


@app.post("/predict")
async def predict(file: UploadFile = File(...)):
    image = read_file_as_image(await file.read())
    image_batch = np.expand_dims(image, 0)
    predictions = MODEL_BETA.predict(image_batch)
    class_name = CLASS_NAMES[np.argmax(predictions[0])]
    confidence = np.max(predictions[0])
    return {
        'class': class_name,
        'confidence': float(confidence)
    }



if __name__ == "__main__":
    uvicorn.run(app, port=8080)
