conda env create -n scikit --file dataspine_conda_environment.yml
source activate scikit

DATASPINE_MODEL_PATH=. python dataspine_train.py
