#!/bin/bash

python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_valid.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_valid_day_coco.json --timeofday daytime &
python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_valid.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_valid_night_coco.json --timeofday night &
python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_test.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_test_day_coco.json --timeofday daytime &
python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_test.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_test_night_coco.json --timeofday night &
