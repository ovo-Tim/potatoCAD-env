#! /usr/bin/bash
mamba create -n potatoCAD python=3.8
conda init
if [ "$(uname)" == "Darwin" ];then
    source /Users/runner/.bash_profile
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ];then  
    source /home/runner/.bashrc
fi
conda activate potatoCAD
python -m pip install --upgrade pip
pip install -r ./requirements-pip.txt
mamba install --yes --file ./requirements-conda.txt 