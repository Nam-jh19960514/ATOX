# ATOX
NIMS 산업수학 문제해결 워크숍 2019 세번째 문제

## Install `gfortran`

### MacOS
```bash
xcode-select --install
brew install gcc
```

### Ubuntu
```bash
apt install gfortran
```

## Create Conda Environment
```bash
git clone https://github.com/wizardbc/ATOX
cd ATOX
conda env create -f environment.yml
conda activate ATOX
```

## NRLMSISE-00
```bash
git clone https://github.com/space-physics/msise00
cd msise00
python3 -m pip install -e .
python3 -c "import msise00; msise00.build()"
```

## Add Jupyter Notebook Kernel
```bash
python -m ipykernel install --user --name ATOX --display-name "Python 3 (ATOX)"
```
