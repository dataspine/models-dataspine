DATASPINE_MODEL_NAME=mnist \
DATASPINE_MODEL_TAG=cpu \
DATASPINE_MODEL_TYPE=tensorflow \
DATASPINE_MODEL_RUNTIME=tfserving \
DATASPINE_MODEL_CHIP=cpu \
DATASPINE_INPUT_PATH=../input \
DATASPINE_OUTPUT_PATH=../output \
  python dataspine_predict.py
