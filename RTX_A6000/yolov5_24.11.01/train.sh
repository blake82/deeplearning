# NCCL_P2P_DISABLE=1 python3 -m torch.distributed.run --master_port 12244 --nproc_per_node 4 train.py --img 640 --epochs 300 --data data/test_14.yaml --cfg models/yolov5n.yaml --device 0,1,2,3 --weights yolov5m.pt --hyp hyp.Objects365.yaml --cos-lr --workers 128 --batch-size 128

CUDA_VISIBLE_DEVICES=3 python3 train.py --device 3 --data data/coco.yaml --weights yolov5m.pt --img 640 --epochs 300 --batch-size 128 --workers 8 --optimizer SGD --cos-lr --cfg models/yolov5n.yaml --hyp hyp.scratch-low.yaml


# data/hyps/merge_hyp.scratch-low_second.yaml 

## --workers 128 --batch-size 1500 : 40M/48M ,  48373/48685 (Graphics 0) : 1:31
# --workers 128 --batch-size 1200 --noautoanchor : 1:30


# runs/train/exp12/weights/best.pt
# yolov5m.pt
# 7,14, 10,27, 21,15, 20,35, 46,26, 31,74, 85,71, 125,223, 364,171



