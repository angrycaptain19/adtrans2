export SIQA_DIR=/home/yujin/Work/adtrans/dataset/social_iqa
export OUTPUT_DIR=/home/yujin/Work/adtrans/outputs/fusions

python ../run_multiple_choice_mod.py \
    --task_name siqa \
    --model_name_or_path roberta-large \
    --train_fusion \
    --do_train \
    --seed 42 \
    --data_dir $SIQA_DIR \
    --learning_rate 5e-5 \
    --num_train_epochs 3 \
    --max_seq_length 128 \
    --output_dir $OUTPUT_DIR/"train-attr" \
    --per_device_eval_batch_size=8 \
    --per_device_train_batch_size=8 \
    --gradient_accumulation_steps 1 \
    --evaluate_during_training \
    --logging_steps 500 \
    --save_steps 500 \
    --overwrite_output \
    # > train-attr-effect.log 2>&1 &