#!/usr/bin/env bash

#ROOT=$(git rev-parse --show-toplevel)

#LOG_ROOT="${ROOT}/logs/"

#mkdir -p ${LOG_ROOT}


# 1. multiclass 
#sweep_output=$(wandb sweep --project gmm-extrapolate ./sweeps/multiclass_classification.yaml)

run_id="ywuls4pw"
#run_id=$(echo "$sweep_output" | grep "wandb: Run sweep agent with:" | awk '{print $NF}' | awk -F'/' '{print $NF}')

agent_command="wandb agent --count 1 edin/gmm-extrapolate/$run_id"

echo $run_id

$agent_command

# 2. linear regression
#sweep_output=$(wandb sweep --project lr-extrapolate ./sweeps/linear_regression.yaml)

#run_id=$(echo $sweep_output | awk '{print $NF}')

run_id="y3814u29"
agent_command="wandb agent --count 1 edin/lr-extrapolate/$run_id"

echo $run_id

$agent_command

# 3. assoc_recall 
#sweep_output=$(wandb sweep --project ar-extrapolate ./sweeps/assoc_recall.yaml)

#run_id=$(echo $sweep_output | awk '{print $NF}')

conda activate icl

run_id="yo1fez28"
agent_command="wandb agent --count 1 edin/ar-extrapolate/$run_id"

echo $run_id

$agent_command

# 4. image classification
#sweep_output=$(wandb sweep --project og-p_bursty ./sweeps/omniglot.yaml)

#run_id=$(echo $sweep_output | awk '{print $NF}')

conda activate icl

run_id="37ro75er"
agent_command="wandb agent --count 1 edin/og-p_bursty/$run_id"

echo $run_id

$agent_command




