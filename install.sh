#!/bin/sh
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui &
git clone https://github.com/behinger/fast-stable-diffusion/ &


apt-get update &&
apt-get install g++ imagemagick git-lfs ffmpeg libsm6 libxext6 vim rename unzip -y &
wait

pip install --upgrade setuptools&
       	export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/conda/lib/" &
wait

# Upload xforms wheel!
wget https://cloud.wirdreibei.de/s/SXdfcSqsqDrdLf2/download/xformers-0.0.15.dev0+8367685.d20221110-cp39-cp39-linux_x86_64.whl  &

python -m venv venvwebui &

pip install xformers-0.0.15.dev0+8367685.d20221110-cp39-cp39-linux_x86_64.whl
pip install bitsandbytes 
pip install git+https://github.com/wookayin/gpustat.git@master 

git config --global user.email "a@b.c"

