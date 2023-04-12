# Dynamic modelling of limonene-pathway in engineered *E. coli*

This repository contains:
- the COPASI model file containing the detailed kinetic equations and fitted parameter values as described in our Methods in Molecular Biology book chapter
- the `run_parameter_estimation.py` script that utilizes Basico

## Description
The model file describes metabolism in an engineered *E. coli* MG1655 strain with [plasmid pJBEI-6409](https://www.addgene.org/47048/) for the production of limonene, under aerobic conditions. The model contains 54 reactions and 54 species, simplified to be taking place in a single compartment. The following major pathways are included:
- glucose phosphotransferase system (PTS)
- glycolysis
- pentose phosphate pathway
- tricarboxylic acid (TCA) cycle
- mevalonate (MVA) pathway
- deoxyxyluose phosphate (DXP) pathway

Time-series data, model construction and parameter fitting were done as per described in our book chapter.

## Requirements
To open the model file:
- Download the [COPASI](http://copasi.org/) software

To run the `run_parameter_estimation.py` script:
- python 3.7+
- [basiCO](https://basico.readthedocs.io/en/latest/)
- pandas
- numpy
- matplotlib

## Usage
To use the `run_parameter_estimation.py` script, set up parameter estimation run settings (loading and mapping of time-series data etc) within COPASI and save the model file. In terminal type the following command:
```shell
$ python3 run_parameter_estimation.py --copasi_model_file /path/to/model/file/MiMB_model.cps --parameter_estimation_file PE.txt --progress_of_fit_plot PE_progress_of_fit.png --model_vs_meaured_plot PE_model_vs_measured.png --run_PE
```

The script has been set to run parameter estimation at 1000 generations with a population size of 300, per recommendation in the book chapter. We have set `create_parametersets=True`, instead of `update_model=True`, so to allow users to assess the results before deciding whether to update the model's parameters with the estimated parameters. 

Output results of the run are setup to be saved in the same directory as the COPASI model file.