mamba create -n potatoCAD python=3.8
conda init
if [ -f /etc/os-release ]; then
    . /etc/os-release
    elif [ $ID = "ubuntu" ]; then
        source /home/runner/.bashrc
    elif [ $ID = "macOS" ]; then
        source /Users/runner/.bash_profile
    fi
conda activate potatoCAD
python -m pip install --upgrade pip
pip install -r ./requirements-pip.txt
mamba install --yes --file ./requirements-conda.txt 