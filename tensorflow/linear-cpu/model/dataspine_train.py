import os
import tensorflow as tf

TRAINING_STEPS = 1000
EVAL_STEPS = 100

from model import train_input_fn, eval_input_fn, model_fn, eval_on_train_data_input_fn

print('The path to read files')

trainfolderpath=os.path.join(os.environ['DATASPINE_INPUT_PATH'], 'training')

print(trainfolderpath)
train_func = train_input_fn(trainfolderpath,"training.csv")

estimator = tf.estimator.Estimator(model_fn=model_fn)

estimator.train(input_fn=train_func, steps=TRAINING_STEPS)

# Export the prepared model
from model import serving_input_fn

serving_func = serving_input_fn(hyperparameters={})

export_path = os.environ['DATASPINE_OUTPUT_PATH']
exported_model = estimator.export_savedmodel(export_dir_base=export_path, 
                                             serving_input_receiver_fn=serving_func)

print('')
print (exported_model)

# Make sure you can run `saved_model_cli` from the command line
import subprocess
output = subprocess.run(["saved_model_cli", "show", \
                "--dir", export_path, "--all"], \
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE)

print('')
print(output.stdout.decode('utf-8'))

print('')
print('Model training completed and saved here: %s' % export_path)

print('')
