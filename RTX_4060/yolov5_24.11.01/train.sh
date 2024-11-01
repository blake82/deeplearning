# NCCL_P2P_DISABLE=1 python3 -m torch.distributed.run --master_port 12244 --nproc_per_node 4 
#python3 train.py --img 640 --epochs 300 --data data/test_14.yaml --cfg models/yolov5n.yaml --device 0 --weights yolov5m.pt --hyp hyp.Objects365.yaml --cos-lr --workers 24 --batch-size 32 --exist-ok
#python3 train.py --img 640 --epochs 300 --data data/test_14.yaml --cfg models/yolov5n.yaml --device 0 --weights runs/train/exp9/weights/last.pt --hyp hyp.Objects365.yaml --cos-lr --workers 24 --batch-size 36 --exist-ok

python train.py --data data/coco.yaml --weights yolov5m.pt --img 640 --epochs 300 --batch-size 36 --workers 24 --device 0 --cfg models/yolov5n.yaml --hyp hyp.scratch-low.yaml




