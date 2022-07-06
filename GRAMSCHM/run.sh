#!/bin/bash

# interations for each profiling
iteration=10
# (seconds) interval between each profiling
interval=5

############################## GRAMSCHM ##############################
echo "############################## SA ##############################"
# warm-up
run_gramschm_sa="./gramschmidt_sa.exe"
$run_gramschm_sa &> /dev/null

for ((i = 0; i < $iteration; i++))
do
    echo "$((i+1)) round"
    sleep $interval
    $run_gramschm_sa
    echo ""
done
echo ""
############################## SA65 ##############################
echo "############################## SA65 ##############################"
# warm-up
run_gramschm_sa65="./gramschmidt_sa65.exe"
$run_gramschm_sa65 &> /dev/null

for ((i = 0; i < $iteration; i++))
do
    echo "$((i+1)) round"
    sleep $interval
    $run_gramschm_sa65
    echo ""
done
echo ""

echo "############################## END ##############################"