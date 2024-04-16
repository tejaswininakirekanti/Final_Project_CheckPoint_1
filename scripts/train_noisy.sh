train_file='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/train.txt'
data_path='/home/tnakirek/Demo-NSF/data'
test_path='home/tnakirek/Demo-NSF/data/multiWOZ-new/test'
valid_file='/home/tnakirek/Demo-NSF/data/multiWOZ-new/valid/valid.txt'
valid_demons_input="/home/tnakirek/Demo-NSF/data/multiWOZ-new/valid/char/seq.in"
valid_demons_output="/home/tnakirek/Demo-NSF/data/multiWOZ-new/valid/char/seq.out"
logging_path='/your_logging_path'
mix_input='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/char/seq.in'
mix_output='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/char/seq.out'
char_path='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/char'

export CUDA_VISIBLE_DEVICES=0; python t5_main.py \
    --seed 2023 \
    --model_name_or_path t5-base \
    --model_save_path ./models/noise_demos_noisy \
    --dataset multiwoz \
    --training \
    --metric f1 \
    --train_file_path ${train_file} \
    --dev_file_path ${valid_file} \
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
    # --add_demonstration \
    --continue_training_path ./models/pretrain \