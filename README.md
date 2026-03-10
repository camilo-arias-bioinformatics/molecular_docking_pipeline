# Molecular docking pipeline for Linux terminal

Automated virtual screening workflow using AutoDock Vina on Linux.

## Overview

This project provides a simple pipeline to perform molecular docking for many compounds obtained from a database using AutoDock Vina. The workflow includes protein preparation, multiple ligand preparation, and docking execution using shell scripts. It is recommended the get the protein and ligand files using a molecular visualization fostware.

## Project Structure

vina-docking-pipeline/

scripts/
    prepare_protein.sh
    prepare_ligand.sh
    run_docking.sh

config/
    vina_config.txt

data/
    example_ligand.pdb
    example_receptor.pdb

results/

README.md

## Requirements

The following software must be installed:

- AutoDock Vina
- Open babel
- Python
- Linux or Unix environment

## Workflow

The docking process follows these steps:

1. Prepare the receptor structure
2. Prepare multiple ligand structures
3. Run molecular docking with AutoDock Vina

## Usage

Run the scripts in the following order:

bash scripts/prepare_protein.sh  
bash scripts/prepare_ligand.sh  
bash scripts/run_docking.sh  

## Example Output

The docking results will be stored in the `results/` folder.

Example output file:

results/docking_output.pdbqt
results/docking_output.txt

## Notes

The script does not perform a search for molecules similar to the original ligand. A search must be performed using protein databases and the SMILES file from the ligand preparation script
The script uses standard values for ligand positioning. All values must be verified for any specific project 

## Acknowledgements

Parts of this project were developed with assistance from ChatGPT for
code suggestions and explanations.

## License

This project is licensed under the MIT License.
