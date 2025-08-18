export HYDRA_FULL_ERROR=1

export N_GPUS=8
export BASE_MODEL=Qwen/Qwen2.5-Math-7B # meta-llama/Llama-3.1-8B 
export DATA_DIR=data/math
export ROLLOUT_TP_SIZE=2
export PROJECT_NAME=LengthReward
export RESPONSE_LENGTH=3072
BASE_MODEL_SHORT_NAME=$(basename "$BASE_MODEL")
BASE_MODEL_SHORT_NAME=$(echo "$BASE_MODEL_SHORT_NAME" | tr '[:upper:]' '[:lower:]')
export EXPERIMENT_NAME=math-grpo-${BASE_MODEL_SHORT_NAME}-8h20-${RESPONSE_LENGTH}-lr
export VLLM_ATTENTION_BACKEND=XFORMERS
export CHECKPOINTS_DIR=checkpoints/${PROJECT_NAME}/${EXPERIMENT_NAME}
export WANDB_INIT_TIMEOUT=120

CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 \
bash scripts/math_grpo_train_8h20_LR.sh
