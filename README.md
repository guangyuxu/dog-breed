# dog-breed

Recognizing the breed of a dog from image

# Acknowledgements

The original data source is found on
https://www.kaggle.com/datasets/gpiosenka/70-dog-breedsimage-data-set

# Steps

## 1. Train Models

### File

./train/cnn_adam.ipynb

### Target

./models

## 2. Model Serving

https://www.tensorflow.org/tfx/serving/docker

### Download image

```shell
# Normal case
docker pull tensorflow-serving
# MacOS M1/M2
docker pull emacski/tensorflow-serving:latest-linux_arm64
```

### Running Option 1, Run directly

```shell
# Normal case
docker run -it -p 8501:8501 -v "./models/10:/models/" -e MODEL_NAME=10 tensorflow/serving
# MacOS M1/M2
docker run -it -p 8501:8501 -v "./models/10:/models/" -e MODEL_NAME=10 emacski/tensorflow-serving
```

### Running Option 2, Run with configuration file

```shell
# Normal case
docker run -p 8500:8500 -p 8501:8501 \
  --name dog_breed_model \
  --mount type=bind,source=./models/,target=/models \
  --mount type=bind,source=./models.config,target=/models.config \
  -t tensorflow/serving --model_config_file=/models.config \
  --allow_version_labels_for_unavailable_models=true
# MacOS M1/M2
docker run -p 8500:8500 -p 8501:8501 \
  --name dog_breed_model \
  --mount type=bind,source=./models/,target=/models \
  --mount type=bind,source=./models.config,target=/models.config \
  -t emacski/tensorflow-serving \
  --model_config_file=/models.config \
  --allow_version_labels_for_unavailable_models=true
```

# 3. API

## Running Option 1, Run Directly

```
python3 main_tf_serving.py
```

## Running Option 2, Run by Shell

```
sh run.sh
```

## Running Option 3, Run in docker

```shell
docker build -t api-dog_breed .
docker run -it --rm -d -p 8080:8080 --name api-dog_breed api-dog_breed
```

## Running Option 3, Run in docker-compose

```shell
docker compose up
```
