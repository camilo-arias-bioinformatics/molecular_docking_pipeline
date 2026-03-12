#!/bin/bash

# Create a grid box with a standard distance of 5 A, distance should be adjusted for different projects
mk_prepare_receptor.py -i protein.pdb -o grid -v --box_enveloping ligand.pdb --padding=5
