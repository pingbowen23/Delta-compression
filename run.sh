MODEL_SAVE_DIR=save/calibrated_model_test

mkdir -p $MODEL_SAVE_DIR

CUDA_VISIBLE_DEVICES=4,5,6,7 python \
    bitdelta/train2.py \
    --base_model /data/public/opensource_models/meta-llama/Llama-2-7b-hf/ \
    --finetuned_model /data/public/opensource_models/WizardLM/WizardMath-7B-V1.0/ \
    --save_dir $MODEL_SAVE_DIR \
    --batch_size 4 \
    --num_steps 200 \
    --save_full_model True \
    # --train
    # &> test.log

    #  /data/public/opensource_models/meta-llama/Llama-2-7b-chat-hf/
