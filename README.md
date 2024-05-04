# Final_Project_CheckPoint_1

## Requirements Installation
```
conda create -n your_env_name python=3.9
conda activate your_env_name
pip3 install torch==2.0.1
pip3 install transformers==4.33.1
pip3 install sentence-transformers
pip3 install nlpaug
pip3 install datasets
```
You can copy and paste the above command in your terminal to create the environment. Make sure to change the model name and logging_path for each model.
## Pre-training
```
bash scripts/pretrain.sh
```
Use the above command to start the pre-training stage.
```
--noise_path ${char_file} \
--clean_path ${train_file} \
--mask_output_path ${mask_output} \
--mask_input_path ${mask_input} \
--classify_output_path ${classify_output} \
--classify_input_path ${classify_input} \
```
The above parameters represent the datasets of the three pre-training tasks proposed in the pre-training stage.

## Training
```
bash scripts/train.sh
```
Use the above command to start the training stage.
```
--add_demonstration \
--demons_train_path ${mix_input} \
--demons_out_path ${mix_output} \
--demons_valid_path ${valid_demons_input} \
--demons_val_out_path ${valid_demons_output} \
```
The 'add_demonstration' represents whether to add demonstrations in the training stage. If this parameter is provided, the following four data paths related to the demonstration need to be provided.

## Testing
```
bash scripts/test.sh
```
Use the above command to start the testing stage.
```
--test_file_path ${test_path} \
```
The 'test_path' represents the root directory containing the test datasets.
