#!/bin/bash

-----
# create virtual environment

--------
# install necessary packages

# preparation of the protein

## convert protein into pdbqt file for docking
mk_prepare_receptor.py -i protein.pdb -o protein.pdbqt

# prepare the compound library
---------
## convert ligand into smiles file
mk_prepare_ligand.py -i ligand.pdb -o ligand.smi

## compound search is processed online using repositories with specific Tanimoto search values
--------
## prepare compound library pdbqt files for sequential docking

# Preparation of the box parameters
mk_prepare_receptor.py -i protein.pdb -o grid -v --box_enveloping ligand.pdb padding=5
----------
#perform docking with autodock vina
