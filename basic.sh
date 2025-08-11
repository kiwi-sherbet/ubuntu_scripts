#!/usr/bin/env bash

sudo apt update
sudo apt upgrade

sudo apt install -y vim
sudo apt install -y wget git curl llvm wget
sudo apt install -y make build-essential 
sudo apt install -y libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev 
sudo apt install -y python3-openssl


PYENV_ROOT="$HOME/.pyenv"
PYENV_VENV="$PYENV_ROOT/plugins/pyenv-virtualenv"
echo $PYENV_ROOT
echo $PYENV_VENV

git clone https://github.com/pyenv/pyenv.git $PYENV_ROOT
git clone https://github.com/pyenv/pyenv-virtualenv.git $PYENV_VENV

sudo sh ./third_party/linux-brprinter-installer-2.2.3-1

mkdir ./tmp
# wget wget https://developer.download.nvidia.com/compute/cuda/12.8.0/local_installers/cuda_12.8.0_570.86.10_linux.run -P ./tmp
# sudo sh ./tmp/cuda_12.8.0_570.86.10_linux.run

# wget https://developer.nvidia.com/downloads/compute/cudnn/secure/8.9.7/local_installers/12.x/cudnn-linux-x86_64-8.9.7.29_cuda12-archive.tar.xz -P ./tmp
# tar -xvf ./tmp/cudnn-linux-x86_64-8.9.7.29_cuda12-archive.tar.xz -C ./tmp
# sudo cp ./tmp/cudnn-linux-x86_64-8.9.7.29_cuda12-archive/include/cudnn*.h /usr/local/cuda/include
# sudo cp -P ./tmp/cudnn-linux-x86_64-8.9.7.29_cuda12-archive/lib/libcudnn* /usr/local/cuda/lib64 
# sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*

echo "$(cat ./config/bash_config.txt)" >> ~/.bashrc

rm -rf ./tmp
rm -rf *.deb
rm -rf uninstaller*

exec bash
