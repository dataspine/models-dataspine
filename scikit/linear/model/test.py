import pipeline_predict

# Make sure you are running in an environment similar to dataspine_conda_environment.yaml
import os

if __name__ == '__main__':
    with open(os.environ['DATASPINE_INPUT_PATH'], 'rb') as fh:
        request_binary = fh.read()
  
    response = pipeline_predict.predict(request_binary)
    print(response)
