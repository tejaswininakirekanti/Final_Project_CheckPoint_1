train_file='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/train.txt'
data_path='/home/tnakirek/Demo-NSF/data'
test_path='home/tnakirek/Demo-NSF/data/multiWOZ-new/test'
valid_file='/home/tnakirek/Demo-NSF/data/multiWOZ-new/valid/valid.txt'
valid_demons_input="/home/tnakirek/Demo-NSF/data/multiWOZ-new/valid/equal_demons1.in"
valid_demons_output="/home/tnakirek/Demo-NSF/data/multiWOZ-new/valid/equal_demons1.out"
logging_path='/models/gpt2_train_typos'
mix_input='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/typos/equal_demons1.in'
mix_output='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/typos/equal_demons1.out'
classify_path='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/'
char_path='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/char'
 
export CUDA_VISIBLE_DEVICES=0; python gpt2_main-Copy1.py \
    --seed 2023 \
    --model_name_or_path gpt2 \
    --model_save_path ./models/gpt2_train_typos \
    --dataset multiwoz \
    --training \
    --metric f1 \
    --train_file_path ${train_file} \
    --dev_file_path ${valid_file} \
    --add_demonstration \
    --demons_train_path ${mix_input} \
    --demons_out_path ${mix_output} \
    --demons_valid_path ${valid_demons_input} \
    --demons_val_out_path ${valid_demons_output} \
    --max_seq_length 256 \
    --decode_max_seq_length 256 \
    --eval_batch_size 16 \
    --test_file_path ${test_path} \
    --logging_file_path ${logging_path} \
    --num 2 \
    --batch_size 8 \
    --num_epochs 1 \
    --learning_rate 5e-5 \
    --evaluation_steps 500 \
    --early_stop \
    --force_del \
    --add_demonstration \
    --continue_training_path ./models/gpt2_pretrain \