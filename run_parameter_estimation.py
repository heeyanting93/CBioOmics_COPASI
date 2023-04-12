import os
import argparse

import pandas as pd
import matplotlib.pyplot as plt
from basico import load_model, T, set_task_settings, run_parameter_estimation, save_model



def run_parameter_estimation_(copasi_model_file, out_parameter_estimation, no_of_generations, population_size):
    """ 
    Runs parameter estimation, and creates a new parameter set from the 
    results to same model file.
    """
    load_model(copasi_model_file)
    set_task_settings(T.PARAMETER_ESTIMATION,
						settings = {'method': {'Number of Generations': no_of_generations, 'Population Size': population_size, 'name': 'Genetic Algorithm'},
									'report': {'filename': out_parameter_estimation, 'append': False, 'confirm_overwrite': True}})
	
    run_parameter_estimation(method='Genetic Algorithm', calculate_statistics=True, 
                        use_initial_values=True, create_parametersets=True)
    save_model(filename=copasi_model_file)



def extract_from_estimation_file(estimation_file, start_identifier, stop_identifier=None):
    """Extract progress of fit, estimation time course dataframes."""
    extract_res = []
    to_append = False
    with open(estimation_file) as f:
        for line in f:
            line = line.rstrip('\n') # remove new line character
            if line.startswith(start_identifier):
                cols = line.split('\t')
                col_len = len(cols)
                to_append = True
                continue
            if to_append and stop_identifier == None:
                if line:
                    extract_res.append(line.split('\t', col_len-1))
                else:
                    break
            elif to_append and stop_identifier != None:
                if not line.startswith(stop_identifier):
                    extract_res.append(line.split('\t', col_len-1))
                else:
                    break
    extract_res_df = pd.DataFrame(extract_res, columns=cols)
    return extract_res_df



def plot_parameter_estimation_results(estimation_file, out_progress_of_fit_plot, out_model_vs_meaured_plot):
    """
     Plots progress of fit and model vs experimental measurements.
    """
    progress_of_fit = extract_from_estimation_file(estimation_file, '[Function Evaluations]')
    progress_of_fit.drop('[Best Parameters]', axis=1, inplace=True)
    progress_of_fit.rename(columns={'[Function Evaluations]': 'Function Evaluations', '[Best Value]': 'Best Value'}, inplace=True)
    progress_of_fit = progress_of_fit.astype(float)
    fit_fig1, f1 = plt.subplots(figsize=(20,10))
    f1.plot(progress_of_fit['Function Evaluations'], progress_of_fit['Best Value'])
    f1.set_xlabel('Function Evaluations')
    f1.set_ylabel('Best Value')
    fit_fig1.savefig(out_progress_of_fit_plot, facecolor='white', edgecolor='none')

    estimation_time_course = extract_from_estimation_file(estimation_file, 'Row', stop_identifier='Objective Value')
    estimation_time_course.drop(0, axis=0, inplace=True)
    estimation_time_course.set_index('Row', inplace=True)
    estimation_time_course = estimation_time_course.astype(float)
    measured_metabolites = ['DXP', 'MVA', 'DHAP+GAP', 'FBP', 'FPP', 'GPP', 'MVAP', 'PYR', 'Y', 'G6P+F6P', 'Glcex', 'LACex', 'ACEex', 'LIMex']   # update as necessary
    fig, axs = plt.subplots(7, 2, figsize=(15, 25))   # update as necessary
    row, col = 0, 0
    for m in measured_metabolites:
        front = 'Values' if '+' in m else ''
        fit = estimation_time_course[f'{front}[{m}](Fit)']
        measured = estimation_time_course[f'{front}[{m}](Data)']
        axs[row][col].plot(estimation_time_course['Time'], fit)
        axs[row][col].scatter(estimation_time_course['Time'], measured)
        axs[row][col].set_title(m)
        col += 1
        if col % 2 == 0:
            row += 1
            col = 0
	        
    fig.savefig(out_model_vs_meaured_plot, facecolor='white', edgecolor='none')



def main():
	parser = argparse.ArgumentParser(description='Run COPASI parameter estimation')
	parser.add_argument('--copasi_model_file', type=str, required=True, help='path to copasi model file')
	parser.add_argument('--parameter_estimation_file', type=str, required=True, help='filename of parameter estimation .txt file')
	parser.add_argument('--progress_of_fit_plot', type=str, required=True, help='filename of progress of fit plot')
	parser.add_argument('--model_vs_meaured_plot', type=str, required=True, help='filename of model vs meaured plot')
	parser.add_argument('--run_PE', type=bool, default=False, action=argparse.BooleanOptionalAction, help='whether to run parameter estimation')
	parser.add_argument('--no_of_generations', type=int, default=1000)
	parser.add_argument('--population_size', type=int, default=300)
	args = parser.parse_args()

	dirname = os.path.dirname(args.copasi_model_file)
	out_parameter_estimation = os.path.join(dirname, args.parameter_estimation_file)
	out_progress_of_fit_plot = os.path.join(dirname, args.progress_of_fit_plot)
	out_model_vs_meaured_plot = os.path.join(dirname, args.model_vs_meaured_plot)

	if args.run_PE:
		print('running PE...')
		run_parameter_estimation_(args.copasi_model_file, out_parameter_estimation, args.no_of_generations, args.population_size)
	plot_parameter_estimation_results(out_parameter_estimation, out_progress_of_fit_plot, out_model_vs_meaured_plot)



if __name__ == '__main__':
	main()