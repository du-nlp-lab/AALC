<h1 style="text-align: center;">AALC: Large Language Model Efficient Reasoning via Adaptive Accuracy-Length Control</h1>

<p align="center">
  <a href="https://arxiv.org/">Paper</a> ｜ 
  <a href="https://">Blog</a> ｜
  <a href="https://huggingface.co/">Model</a> ｜
  <a href="https://huggingface.co/">Data</a>
</p>

The repo is built based on the verl GitHub repo.

## Getting Started
To set up an environment, please follow the following commands:
```bash
conda create -n lr python==3.10
pip install -r requirements.txt
pip install -e . --no-deps
```

To train a model, please confirm all parameters in the file `train_grpo_math_LR.sh` and then run:
```bash
bash train_grpo_math_LP.sh
```

To test a checkpoint, the procedure is similar to the training part, but the file is `test_grpo_math_LR.sh`.


## Citation

```bibtex
@article{li2025aalc,
  title={AALC: Large Language Model Efficient Reasoning via Adaptive Accuracy-Length Control},
  author={Li, Ruosen and Luo, Ziming and Zhang, Quan and Li, Ruochen and Zhou, Ben and Payani, Ali and Du, Xinya},
  journal={arXiv preprint arXiv:2506.20160},
  year={2025}
}
