## run on vast.ai
```bash
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
git clone https://github.com/behinger/fast-stable-diffusion/

apt-get update
apt-get install g++ imagemagick git-lfs ffmpeg libsm6 libxext6 vim -y

pip install --upgrade setuptools

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/conda/lib/"
pip install bitsandbytes
# Upload xforms wheel!
wget https://cloud.wirdreibei.de/s/SXdfcSqsqDrdLf2/download/xformers-0.0.15.dev0+8367685.d20221110-cp39-cp39-linux_x86_64.whl
pip install xformers-0.0.15.dev0+8367685.d20221110-cp39-cp39-linux_x86_64.whl


pip install git+https://github.com/wookayin/gpustat.git@master

# resize images
mogrify *.jpg -gravity center -crop 512x512+0+0 +repage

# launch automatic!!!
python -m venv venvwebui
source venvwebui/bin/activate
cd  stable-diffusion-webui
python3.9 launch.py --share --enable-insecure-extension-access --disable-safe-unpickle --ckpt-directory=/content/Fast-Dreambooth/Sessions/*/

# IMPORTANT: Launch stable diffusion webui before training!

```
# fast-stable-diffusion Colabs, +25-50% speed increase, AUTOMATIC1111 + DreamBooth
Colab adaptations AUTOMATIC1111 Webui and Dreambooth, train your model using this easy simple and fast colab, all you have to do is enter you huggingface token once, and it will cache all the files in GDrive, including the trained model and you will be able to use it directly from the colab, make sure you use high quality reference pictures for the training, enjoy !!
 
 
<center><b>&nbsp;&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;AUTOMATIC1111 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DreamBooth
 
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="https://colab.research.google.com/github/TheLastBen/fast-stable-diffusion/blob/main/fast_stable_diffusion_AUTOMATIC1111.ipynb">
<img src='https://github.com/TheLastBen/fast-stable-diffusion/raw/main/Dreambooth/1.jpg'></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="https://colab.research.google.com/github/TheLastBen/fast-stable-diffusion/blob/main/fast-DreamBooth.ipynb"><img src='https://github.com/TheLastBen/fast-stable-diffusion/raw/main/Dreambooth/4.jpg'></a>

Dreambooth paper : https://dreambooth.github.io/

SD implementation by @XavierXiao : https://github.com/XavierXiao/Dreambooth-Stable-Diffusion
 
## Other Webuis
 
<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HLKY &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Relaxed mode
 
<a href="https://colab.research.google.com/github/TheLastBen/fast-stable-diffusion/blob/main/fast_stable_diffusion_hlky.ipynb"><img src='https://github.com/TheLastBen/fast-stable-diffusion/raw/main/Dreambooth/2.jpg'> </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://colab.research.google.com/github/TheLastBen/fast-stable-diffusion/blob/main/fast_stable_diffusion_relaxed.ipynb"> 
 <img src='https://github.com/TheLastBen/fast-stable-diffusion/raw/main/Dreambooth/3.jpg'></a>
