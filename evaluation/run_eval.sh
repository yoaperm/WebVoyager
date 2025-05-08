#!/bin/bash
nohup python -u auto_eval.py \
    --api_key "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" \
    --process_dir ../results/20250506_22_26_15 \
    --max_attached_imgs 15 > evaluation.log &