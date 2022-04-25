ISAAC_VENV_NAME='rlgpu'
ISAACGYM_PATH='./isaacgym'
GYM_EXAMP_PATH='./IsaacGymEnvs'

CONFIGURE_OPTS=--enable-shared pyenv install 3.7.10
pyenv virtualenv 3.7.10 $ISAAC_VENV_NAME
pyenv activate $ISAAC_VENV_NAME

pip3 install torch==1.8.2+cu111 torchvision==0.9.2+cu111 -f https://download.pytorch.org/whl/lts/1.8/torch_lts.html
pip3 install -r ./config/req_isaacgym.txt
pip3 install -e "$ISAACGYM_PATH/python"
pip3 install -e "$GYM_EXAMP_PATH"

pyenv deactivate

exec bash