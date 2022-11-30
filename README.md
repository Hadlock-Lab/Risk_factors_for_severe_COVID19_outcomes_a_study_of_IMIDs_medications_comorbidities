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
* [envrionment_package_versions.csv](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/blob/main/environment_package_versions.csv) contains full detail on the computational requirements & needed packages for codes of this repo.
  
  
## Introduction
Information to be added upon publication.

## Training Dataset
Used EHR records from PSJH system contains PHI information.

## Public independent validation train dataset
National COVID Cohort Collaborative (N3C) data

## Code Structure
* [analyses_codes](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/analyses_codes) contains all analyses codes used to conduct all of the data preprocessing and analyses presented in the paper
* [utilities_functions](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/utilities_functions) contains all utilities functions codes used to support data preprocessing
* [clinical_concepts_dictionary](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/clinical_concepts_dictionary) contains all dictionaries used to define clinical concepts for both conditions and medications
* [R_scripts_for_figures](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/R_scripts_for_figures) contains all R scripts used to generate figures in both main text and supplementary material
