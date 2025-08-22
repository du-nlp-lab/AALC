<h1 style="text-align: center;">AALC: Large Language Model Efficient Reasoning via Adaptive Accuracy-Length Control</h1>

<p align="center">
  <a href="https://arxiv.org/abs/2506.20160">Paper</a> ｜ 
  <a href="https://">Blog</a> ｜
  <a href="https://huggingface.co/du-lab">Model</a> ｜
  <a href="https://huggingface.co/du-lab">Data</a>
</p>

The repo is built based on the VERL GitHub repo.

## Getting Started
To set up an environment, please follow the following commands:
```bash
conda create -n lr python==3.10
conda activate lr
pip install torch==2.6.0 torchvision==0.21.0
pip install flash-attn==2.8.2 --no-build-isolation

git clone https://github.com/du-nlp-lab/AALC
cd AALC
pip install -r requirements.txt
pip install -e . --no-deps
```

If you have the flash-attn related error, please run the following commands:
```bash
pip uninstall flash-attn -y
pip cache remove flash_attn
pip install flash-attn==2.7.4.post1 --no-build-isolation
```
If you have the apex-related error or want to install apex, please run the following commands out of the AALC folder:
```bash
pip uninstall apex -y
git clone https://github.com/NVIDIA/apex
cd apex
pip install -v --disable-pip-version-check --no-cache-dir --no-build-isolation --global-option="--cpp_ext" --global-option="--cuda_ext" ./
```

## Train and Test Models
To train a model, please confirm all parameters in the file `train_grpo_math_LR.sh` and then run:
```bash
bash train_grpo_math_LP.sh
```

To test a checkpoint, the procedure is similar to the training part, but the file is `test_grpo_math_LR.sh`.
```bash
bash test_grpo_math_LP.sh
```


## Citation

```bibtex
@article{li2025aalc,
  title={AALC: Large Language Model Efficient Reasoning via Adaptive Accuracy-Length Control},
  author={Li, Ruosen and Luo, Ziming and Zhang, Quan and Li, Ruochen and Zhou, Ben and Payani, Ali and Du, Xinya},
  journal={arXiv preprint arXiv:2506.20160},
  year={2025}
}
