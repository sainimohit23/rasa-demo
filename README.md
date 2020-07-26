# RASA NLU Demo

## :surfer: Introduction
The purpose of this repo is to showcase a NLU model built using DIET  Classifier of Rasa Open Source. This repository includes a pre-trained model for the demonstration. The data is taken from an official rasa demo bot: Sara.

For details on training of model and preparation of data, see: 

The model can be used for:
- Intent Classification
- Entity recognition


## 👷‍ Setting up

### With Docker

1. Build container using Dockerfile from root directory

```
docker build -t rasa_nlu .
```
2. Start the NLU server using newly build docker container
```
docker run rasa_nlu
```

This will build and start the a docker containing the NLU server on the default port (`5005`) of the Rasa NLU.

### Without Docker
1. [Optional] Create a python environment and activate it.

2. Install dependencies
```
pip install -r requirements.txt
```

3. Start the Rasa NLU server using;
```
rasa run --enable-api -m models/nlu_model.gz
```
This will start the docker server on the default port `5005` of the container.

## To test the API:

After starting the server, test the api on the following endpoint `/model/parse`.

```
rasa test nlu -u test/test_data.json --model models
rasa test core --stories test/test_stories.md
```

