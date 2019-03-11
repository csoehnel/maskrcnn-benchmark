#!/bin/bash

if [ "$1" == '' ]; then
    echo "Usage: $0 <model folder>";
    exit;
fi

for file in "$1"/*.pth; do
    python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_valid',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
    python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_valid_day',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
    python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_valid_night',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
done
