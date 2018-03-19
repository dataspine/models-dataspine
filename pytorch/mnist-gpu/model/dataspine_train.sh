DATASPINE_MODEL_RUNTIME=python \
DATASPINE_MODEL_TYPE=pytorch \
DATASPINE_MODEL_NAME=mnist \
DATASPINE_MODEL_TAG=gpu \
DATASPINE_INPUT_PATH=../input/ \
DATASPINE_OUTPUT_PATH=./dataspine_tfserving/ \
  python dataspine_train.py
