#!/bin/bash

# Protonate the ligand to ph 7.4
obabel ligand.pdb -O ligand.pdb -p 7.4

# Create smi file
obabel ligand.pdb -osmi -O ligand.smi
