#!/bin/bash
conda create --name aad python=3.8 -y
conda activate aad

conda install pytorch==1.12.0 torchvision==0.13.0 cudatoolkit=11.3 -c pytorch -y

pip install -U scikit-learn