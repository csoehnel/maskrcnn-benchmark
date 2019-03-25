#!/bin/bash

### UNCOMMENT/CHANGE REQUIRED LINES ###

## train splits
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_B.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_B_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_C.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_C_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A_over_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_B_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_B_over_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_C_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_C_over_coco.json &

## train sub splits (debug)
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A_2000_coco.json --numframes 2000 &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_B.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_B_2000_coco.json --numframes 2000 &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_C.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_C_2000_coco.json --numframes 2000 &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A_over_2000_coco.json --numframes 2000 &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_B_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_B_over_2000_coco.json --numframes 2000 &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_C_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_C_over_2000_coco.json --numframes 2000 &

## train-dev splits
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_A.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_A_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_B.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_B_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_C.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_C_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_A_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_A_over_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_B_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_B_over_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_C_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_C_over_coco.json &

## valid splits
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_valid.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_valid_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_valid.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_valid_day_coco.json --timeofday daytime &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_valid.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_valid_night_coco.json --timeofday night &

## test splits
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_test.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_test_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_test.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_test_day_coco.json --timeofday daytime &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_test.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_test_night_coco.json --timeofday night &

## gan-augmented train splits
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_025.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_025_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_050.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_050_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_B_ganaug_025.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_B_ganaug_025_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_025_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_025_over_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_050_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_050_over_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_B_ganaug_025_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_B_ganaug_025_over_coco.json &

## gan-augmented train sub splits (debug)
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_025.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_025_2000_coco.json --numframes 2000 &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_050.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_050_2000_coco.json --numframes 2000 &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_B_ganaug_025.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_B_ganaug_025_2000_coco.json --numframes 2000 &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_025_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_025_over_2000_coco.json --numframes 2000 &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_050_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_A_ganaug_050_over_2000_coco.json --numframes 2000 &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_B_ganaug_025_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_B_ganaug_025_over_2000_coco.json --numframes 2000 &

## gan-augmented train-dev splits
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_A_ganaug_025.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_A_ganaug_025_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_A_ganaug_050.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_A_ganaug_050_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_B_ganaug_025.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_B_ganaug_025_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_A_ganaug_025_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_A_ganaug_025_over_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_A_ganaug_050_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_A_ganaug_050_over_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_B_ganaug_025_over.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_augmented_v032_e14/annotations/bdd100k_sorted_train_dev_B_ganaug_025_over_coco.json &

## additional train-A run "augonlyasbase"
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A_ganaug_050_over_augonlyasbase.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A_ganaug_050_over_augonlyasbase_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_A_ganaug_050_over_augonlyasbase.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_A_ganaug_050_over_augonlyasbase_coco.json &

## additional train-A run "baseonly"
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A_ganaug_050_over_baseonly.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_A_ganaug_050_over_baseonly_coco.json &
#python convert_bdd100k2coco.py --bdd100kjson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_A_ganaug_050_over_baseonly.json --cocojson ../../../../../CurrentDatasets/bdd100k_sorted_coco/annotations/bdd100k_sorted_train_dev_A_ganaug_050_over_baseonly_coco.json &
