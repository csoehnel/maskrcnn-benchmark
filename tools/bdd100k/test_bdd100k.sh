#!/bin/bash

if [ "$1" == '' ]; then
    echo "Usage: $0 <model folder>";
    exit;
fi

for file in "$1"/*.pth; do
    python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_valid',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
    python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_valid_day',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
    python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_valid_night',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"

    #python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_train_dev_A_over',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
    #python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_train_dev_B_over',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
    #python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_train_dev_C_over',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"

    #python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_train_A_over_2000',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
    #python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_train_B_over_2000',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
    #python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_train_C_over_2000',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"

    #python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_test',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
    #python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_test_day',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
    #python tools/test_net.py --config-file "configs/retinanet/retinanet_R-50-FPN_1x_finetune_nightdrive.yaml" MODEL.WEIGHT "$file" DATASETS.TEST "('bdd100k_coco_test_night',)" TEST.CAT_ID_FILTER "[1, 3, 10, 13]"
done