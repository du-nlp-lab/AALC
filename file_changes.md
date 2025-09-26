# File Changes from VeRL

## Reward Function Related
#### `verl/workers/reward_manager/__init__.py`
Add the `LengthReward` to the `reward_manager` namespace, which will be imported to other scripts.

#### `verl/workers/reward_manager/length_reward.py`
The main file of the `LengthReward` class. It is built based on the naive reward. The input includes the target accuracy and the latest accuracy on the validation set. The output falls within the range of 0 to 1.

## Training Process Related
#### `verl/trainer/main_ppo.py`
Import the `LengthReward` class in the script to create an instance.

#### `verl/trainer/ray_trainer.py`
Create a dynamic scheduler to balance the focus on accuracy or generation length.
It initializes the `target` and gradually schedules it over the training steps. The `target` is then passed to the `LengthReward` instance to adjust its behavior during training.

## Test Process Related
#### `verl/utils/reward_score/reward_score.py`
Add a `reward_func` function to assign `compute_score` function for different datasets during testing.
