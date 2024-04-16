train_file='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/seq.in'
data_path='/home/tnakirek/Demo-NSF/data'
test_path='/home/tnakirek/Demo-NSF/data/multiWOZ-new/test'
valid_file='/home/tnakirek/Demo-NSF/data/multiWOZ-new/valid/valid.txt'
# valid_demons_input="xxx/multiWOZ-new/valid/valid_demons_2.in"
# valid_demons_output="xxx/multiWOZ-new/valid/valid_demons_2.out"
logging_path='/home/tnakirek/Demo-NSF/models/bart_noise_demos'
# mix_input='xxx/multiWOZ-new/mix/mix_all_demons_num_2_noise.in'
# mix_output='xxx/multiWOZ-new/mix/mix_all_demons_num_2_noise.out'
# --add_demonstration \
    
classify_path='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/'
char_path='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/char'

export CUDA_VISIBLE_DEVICES=0; python bart_main.py \
    --seed 2023 \
    --model_name_or_path facebook/bart-base \
    --dataset multiwoz \
    --metric f1 \
    --max_seq_length 256 \
    --decode_max_seq_length 128 \
    --eval_batch_size 32 \
    --test_file_path ${test_path} \
    --logging_file_path ${logging_path} \
    --num 2 \
    --batch_size 16 \
    --num_epochs 1 \
    --learning_rate 5e-5 \
    --evaluation_steps 100 \
    --early_stop \
    --force_del \
    --eval_only \
    --continue_training_path ./models/bart_noise_demos \