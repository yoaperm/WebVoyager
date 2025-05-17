#!/bin/bash
nohup python -u run.py \
    --test_file data/Megatron_Data.jsonl \
    --api_key "YOUR-API-KEY" \
    --headless \
    --max_iter 15 \
    --max_attached_imgs 3 \
    --temperature 1 \
    --fix_box_color \
    --seed 42 > test_tasks.log &
