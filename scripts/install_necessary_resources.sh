#!/bin/bash

# Initialize a virtual environment
python3 -m venv .venv
source .venv/bin/activate

# Install all necessary packages
pip install meeko
pip install rdkit
pip install scipy
pip install gemmi
pip install prody
