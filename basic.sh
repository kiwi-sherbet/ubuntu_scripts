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
# wget https://developer.download.nvidia.com/compute/cuda/11.1.0/local_installers/cuda_11.1.0_455.23.05_linux.run -P ./tmp
# sudo sh ./tmp/cuda_11.1.0_455.23.05_linux.run

#wget https://developer.nvidia.com/compute/machine-learning/cudnn/secure/8.2.1.32/11.3_06072021/cudnn-11.3-linux-x64-v8.2.1.32.tgz -P ./tmp
# tar -xzvf ./tmp/cudnn-11.3-linux-x64-v8.2.1.32.tgz -C ./tmp
# sudo cp ./tmp/cuda/include/cudnn*.h /usr/local/cuda/include
# sudo cp -P ./tmp/cuda/lib64/libcudnn* /usr/local/cuda/lib64 
# sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*

echo "$(cat ./config/bash_config.txt)" >> ~/.bashrc

rm -rf ./tmp
rm -rf *.deb
rm -rf uninstaller*

exec bash
