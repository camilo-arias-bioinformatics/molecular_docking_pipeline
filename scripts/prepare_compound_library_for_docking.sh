#!/bin/bash

# Create  directory to store the pdbqt files for the compound library
mkdir compound_library_fragmented
mkdir compoun_library_sdf
mkdir compoun_library_pdbqt

# Extract individual sdf files from compound library search sdf file
obabel compound_library.sdf -O compound_library_fragmented/ligand_.sdf -m

for f in compound_library_fragmented/*.sdf; do
    base=$(basename "$f")
    obabel "$f" -O "compound_library/$base" --largest -h
done

for f in compound_library/*.sdf; do
    base=$(basename "$f" .sdf)
    mk_prepare_ligand.py -i "$f" -o "compound_library_pdbqt/$base.pdbqt"
done
