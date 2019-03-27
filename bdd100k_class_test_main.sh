#!/bin/bash

./tools/bdd100k/test_bdd100k_class_car.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over
./tools/bdd100k/test_bdd100k_class_person.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over
./tools/bdd100k/test_bdd100k_class_traffic_sign.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over
./tools/bdd100k/test_bdd100k_class_traffic_light.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over
./tools/bdd100k/test_bdd100k_class_car_bus_truck.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over
mv *.txt /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over

./tools/bdd100k/test_bdd100k_class_car.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_B_over
./tools/bdd100k/test_bdd100k_class_person.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_B_over
./tools/bdd100k/test_bdd100k_class_traffic_sign.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_B_over
./tools/bdd100k/test_bdd100k_class_traffic_light.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_B_over
./tools/bdd100k/test_bdd100k_class_car_bus_truck.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_B_over
mv *.txt /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_B_over

./tools/bdd100k/test_bdd100k_class_car.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_C_over
./tools/bdd100k/test_bdd100k_class_person.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_C_over
./tools/bdd100k/test_bdd100k_class_traffic_sign.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_C_over
./tools/bdd100k/test_bdd100k_class_traffic_light.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_C_over
./tools/bdd100k/test_bdd100k_class_car_bus_truck.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_C_over
mv *.txt /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_C_over

./tools/bdd100k/test_bdd100k_class_car.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_025
./tools/bdd100k/test_bdd100k_class_person.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_025
./tools/bdd100k/test_bdd100k_class_traffic_sign.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_025
./tools/bdd100k/test_bdd100k_class_traffic_light.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_025
./tools/bdd100k/test_bdd100k_class_car_bus_truck.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_025
mv *.txt /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_025

./tools/bdd100k/test_bdd100k_class_car.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_050
./tools/bdd100k/test_bdd100k_class_person.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_050
./tools/bdd100k/test_bdd100k_class_traffic_sign.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_050
./tools/bdd100k/test_bdd100k_class_traffic_light.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_050
./tools/bdd100k/test_bdd100k_class_car_bus_truck.sh /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_050
mv *.txt /home/SharedFolder/git/csoehnel/maskrcnn-benchmark_gpu2/ITER_SELECT_train_A_over_ganaug_050
