train_file='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/seq.in'
mask_input='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/mask.in'
mask_output='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/mask.out'
classify_output='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/classify1.out'
classify_input='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/classify1.in'
char_file='/home/tnakirek/Demo-NSF/data/multiWOZ-new/train/char/seq.in'

export CUDA_VISIBLE_DEVICES=0; python gpt2_main.py \
    --model_name_or_path gpt2 \
    --model_save_path ./models/gpt2_pretrain \
    --dataset multiwoz \
    --noise_path ${char_file} \
    --clean_path ${train_file} \
    --mask_output_path ${mask_output} \
    --mask_input_path ${mask_input} \
    --classify_output_path ${classify_output} \
    --classify_input_path ${classify_input} \
    --batch_size 8 \
    --early_stop \
    --force_del \
    --pretrain \
    --auxiliary_without_eval \