# Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities

This contains the code used to conduct the analyses for Qi et al. 2022 paper on the analysis of Risk factors for severe COVID-19 outcomes: a study of immune-mediated inflammatory diseases, immunomodulatory medications, and comorbidities in a large US healthcare system

Code repository accompanying the published paper *"Risk factors for severe COVID-19 outcomes: a study of immune-mediated inflammatory diseases, immunomodulatory medications, and comorbidities in a large US healthcare system"* by Qi Wei,∗, Philip J. Mease,∗, Michael Chiorean, Lulu Iles-Shih, Wanessa F. Matos, Andrew Baumgartner, Sevda Molani, Yeon Mi Hwang, Basazin Belhu, Jennifer Hadlock,∗∗ *<Jornual name>*.

You can find full text of my paper on this link: <DOI link>

Your can cite my paper using the following bibtex citation:
```
@article{article,
author = {Qi Wei, Philip J. Mease, Michael Chiorean, Lulu Iles-Shih, Wanessa F. Matos, Andrew Baumgartner, Sevda Molani, Yeon Mi Hwang, Basazin Belhu, Jennifer Hadlock},
year = {2022},
month = {XX},
pages = {XXX},
title = {Risk factors for severe COVID-19 outcomes: a study of immune-mediated inflammatory diseases, immunomodulatory medications, and comorbidities in a large US healthcare system,
volume = {XXX},
journal = {XXX},
doi = {XXX}
}
```

## Installation

## Introduction
In this paper we analysed 15,397 patients with IMIDs, identified from a large US health care system data base regarding risk of COVID-19 infection and severe outcomes of 1) hospitalization or death, 2) mechanical ventilation or death and 3) death in two time periods of the pandemic, pre-Omicron and Omicron-predominant. Using multivariable logistic regression and a contemporary ML approach extreme gradient boosting, which demonstrated superior performance, we demonstrated that age and most chronic comorbidities were associated with worse outcomes of COVID-19 infection, whereas vaccination and boosters were associated with better outcomes. Patients with IMIDs had higher rates of hospitalisation and mortality than those without. However, apart from rheumatoid arthritis, specific IMIDs themselves did not show association with worse outcomes. Spondyloarthritis and psoriasis were associated with better outcomes, which merits further research. 

## Training Dataset
Used EHR records from PSJH system contains PHI information.

## Public independent validation train dataset
National COVID Cohort Collaborative (N3C) data

## Code Structure
* [analyses_codes](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/analyses_codes) contains all analyses codes used to conduct all of the data preprocessing and analyses presented in the paper
* [utilities_functions](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/utilities_functions) contains all utilities functions codes used to support data preprocessing
* [clinical_concepts_dictionary](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/clinical_concepts_dictionary) contains all dictionaries used to define clinical concepts for both conditions and medications
* [R_scripts_for_figures](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/R_scripts_for_figures) contains all R scripts used to generate figures in both main text and supplementary material

## Diagrammatic representation of the flowchart of patient selection
![Figure 1: Cohort flow diagram for retrospective study of patients at PSJH = Providence St Joseph hospital or clinic in the U.S. (Alaska, California, Montana, New Mexico, Oregon, Washington, or Texas).](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/blob/main/images/figure1.png)

## Results
![Figure 3: Log adjusted odds ratio. Selected factors for hospitalization or MV or death, MV or death, and death across Time Interval 1 (03/01/2021 to 12/25/2021) and Time Interval 2 (12/26/2021 to 08/30/2022) in COVID-19 positive patients, using multivariable logistic regression (LR). The colour of dots represent p-values calculated using raw data. Position and size of dots represents log-adjusted odds ratio and feature importance from over-sampling. The error bar represents the 95% confidence interval. Factors with fewer than ten observations were excluded.](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/blob/main/images/figure3_LR_results.png)

