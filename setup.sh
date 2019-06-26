#!/bin/bash
# https://github.com/space-physics/msise00
xcode-select --install
brew install gcc
# apt install gfortran

conda env create -f environment.yml
# source activate ATOX
conda activate ATOX

git clone https://github.com/space-physics/msise00
cd msise00
python3 -m pip install -e .
python3 -c "import msise00; msise00.build()"
cd ..
python -m ipykernel install --user --name ATOX --display-name "Python 3 (ATOX)"