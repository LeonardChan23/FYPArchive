#!/bin/bash

CUDA_VISIBLE_DEVICES=0 nohup python -m torch.distributed.launch --nproc_per_node=1 --master_port=$RANDOM train_conresnet.py \
--data_dir='dataset/' \
--train_list='list/train_list.txt' \
--val_list='list/val_list.txt' \
--snapshot_dir='checkpoints/' \
--input_size='80,160,160' \
--batch_size=2 \
--num_gpus=1 \
--local_rank=0 \
--num_steps=20000 \
--val_pred_every=500 \
--learning_rate=1e-4 \
--num_classes=3 \
--num_workers=4 \
--random_mirror=True \
--random_scale=True \
> /content/log.file 2>&1 &
