#!/bin/bash
nohup python -u auto_multi_eval.py \
    --api_key "YOUR-API-KEY" \
    --process_dir ../results/megatron_nocnoc \
    --max_attached_imgs 15 > evaluation_multi_eval.log &