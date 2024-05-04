# Final_Project-CS678
Team Members : Tejaswini Nakirekanti(G01391974)
               Murali Sai Lakith Pusarla(G01381718)
## Requirements Installation
```
pip install -r requirements.txt
```
You can copy and paste the above command in your terminal to create the environment.
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
### The 'add_demonstration' represents whether to add demonstrations in the training stage. If this parameter is provided, the following four data paths related to the demonstration need to be provided.

## Testing
```
bash scripts/test.sh
```

Use the above command to start the testing stage.
```
--test_file_path ${test_path} \
```
The 'test_path' represents the root directory containing the test datasets.


## Note(Check Point 2)

Make sure to update the paths according to the model and the type of data being used in the path variables associated with each script file.
