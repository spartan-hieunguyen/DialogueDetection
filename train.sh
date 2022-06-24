CUDA_VISIBLE_DEVICES="0" \
python ./scripts/train.py \
    --model_name_or_path vinai/phobert-base \
    --train_data_file ./data/films/train.csv \
    --eval_data_file ./data/films/eval.csv \
    --do_train \
    --per_device_train_batch_size 64 \
    --per_device_eval_batch_size 32 \
    --num_cycles 1 \
    --weight_decay 0.1 \
    --learning_rate 5e-6 \
    --num_train_epochs 50 \
    --use_device cuda \
    --dataloader_pin_memory True \
    --dataloader_num_workers 2 \
    --output_dir ./checkpoint/multi_task/v5 \
    --overwrite_output_dir \
    --adam_beta2 0.98 \
    --warmup_ratio 0.1 \
    --task multitask \
    --fuse_lstm_information True \
    --residual True \
    --mask_speaker False \
    --speaker_classes 3 \
    --fp16 True