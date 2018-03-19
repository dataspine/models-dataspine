conda env create -n scikit --file dataspine_conda_environment.yml
source activate scikit

DATASPINE_INPUT_PATH=../input/predict/test_request.json DATASPINE_MODEL_RUNTIME=python DATASPINE_MODEL_TYPE=scikit DATASPINE_MODEL_NAME=linear DATASPINE_MODEL_TAG=a DATASPINE_MODEL_RUNTIME=python DATASPINE_MODEL_CHIP=cpu \
   python test.py
