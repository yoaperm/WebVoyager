#!/bin/bash
nohup python -u run.py \
    --test_file ./data/tasks_test.jsonl \
    --api_key "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" \
    --headless \
    --max_iter 15 \
    --max_attached_imgs 3 \
    --temperature 1 \
    --fix_box_color \
    --search_mode "best_deal" \
    --seed 42 > test_tasks.log &
