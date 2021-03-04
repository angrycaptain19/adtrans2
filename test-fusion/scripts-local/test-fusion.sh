export SIQA_DIR=/home/yujin/Work/adtrans/data/social_iqa
export OUTPUT_DIR=/home/yujin/Work/adtrans/outputs/fusions
export FUSION_PATH=/home/yujin/Work/adtrans/outputs/fusions/train-attr-effect/default,xAttr,xEffect

python ../run_multiple_choice.py \
    --task_name siqa \
    --model_name_or_path roberta-large \
    --test_fusion \
    --do_predict \
    --fusion_path $FUSION_PATH \
    --seed 42 \
    --data_dir $SIQA_DIR \
    --max_seq_length 128 \
    --output_dir $OUTPUT_DIR/"train-attr-effect" \
    --per_device_eval_batch_size=8 \
    --overwrite_output \
    # > train-attr-effect.log 2>&1 &