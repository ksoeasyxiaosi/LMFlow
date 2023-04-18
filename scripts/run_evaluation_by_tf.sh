#!/bin/bash

CUDA_VISIBLE_DEVICES=0 \
    deepspeed examples/evaluate.py \
    --answer_type medmcqa \
    --model_name_or_path output_models/llama30b-lora-170k \
    --dataset_path data/MedQA-USMLE/validation \
    --deepspeed examples/ds_config.json \
    --metric accuracy
