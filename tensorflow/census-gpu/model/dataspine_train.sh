DATASPINE_MODEL_RUNTIME=tfserving \
DATASPINE_MODEL_TYPE=tensorflow \
DATASPINE_MODEL_NAME=census \
DATASPINE_MODEL_TAG=gpu \
DATASPINE_INPUT_PATH=../input/ \
DATASPINE_OUTPUT_PATH=./dataspine_tfserving/ \
  python dataspine_train.py
