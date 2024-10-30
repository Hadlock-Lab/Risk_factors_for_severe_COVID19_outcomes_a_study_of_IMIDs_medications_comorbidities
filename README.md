# Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities

This contains the code used to conduct the analyses for Qi et al. 2023 paper on the analysis of Risk factors for severe COVID-19 outcomes: a study of immune-mediated inflammatory diseases, immunomodulatory medications, and comorbidities in a large US healthcare system

Code repository accompanying the published paper *"Risk factors for severe COVID-19 outcomes: a study of immune-mediated inflammatory diseases, immunomodulatory medications, and comorbidities in a large US healthcare system"* by Qi Wei,∗, Philip J. Mease,∗, Michael Chiorean, Lulu Iles-Shih, Wanessa F. Matos, Andrew Baumgartner, Sevda Molani, Yeon Mi Hwang, Basazin Belhu, Alexandra Ralevsi, Jennifer Hadlock,∗∗ *<Jornual name>*.

You can find full text of my paper on this link: <[Paper link](https://www.thelancet.com/journals/landig/article/PIIS2589-7500(24)00021-9/fulltext)>

Your can cite my paper using the following bibtex citation:
```
@article{article,
author = {Qi Wei, Philip J. Mease, Michael Chiorean, Lulu Iles-Shih, Wanessa F. Matos, Andrew Baumgartner, Sevda Molani, Yeon Mi Hwang, Basazin Belhu, Alexandra Ralevsi, Jennifer Hadlock},
year = {2023},
month = {06},
pages = {309-322},
title = {Risk factors for severe COVID-19 outcomes: a study of immune-mediated inflammatory diseases, immunomodulatory medications, and comorbidities in a large US healthcare system,
volume = {6},
issue = {5},
journal = {The Lancet Digital Health},
doi = {10.1016/S2589-7500(24)00021-9}
}
```
or using the following NLM format citation:
```
Wei Q, Mease PJ, Chiorean M, Iles-Shih L, Matos WF, Baumgartner A, Molani S, Hwang YM, Belhu B, Ralevski A, Hadlock J. Machine learning to understand risks for severe COVID-19 outcomes: a retrospective cohort study of immune-mediated inflammatory diseases, immunomodulatory medications, and comorbidities in a large US health-care system. Lancet Digit Health. 2024 May;6(5):e309-e322. doi: 10.1016/S2589-7500(24)00021-9. PMID: 38670740; PMCID: PMC11069366.
```

## Installation
* [envrionment_package_versions.csv](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/blob/main/environment_package_versions.csv) contains full detail on the computational requirements & needed packages for codes of this repo.
  
  
## Introduction

### Background

In the context of immune-mediated inflammatory diseases (IMIDs), COVID-19 outcomes are incompletely understood and vary considerably depending on the patient population studied. We aimed to analyse severe COVID-19 outcomes and to investigate the effects of the pandemic time period and the risks associated with individual IMIDs, classes of immunomodulatory medications (IMMs), chronic comorbidities, and COVID-19 vaccination status.

### Methods

In this retrospective cohort study, clinical data were derived from the electronic health records of an integrated health-care system serving patients in 51 hospitals and 1085 clinics across seven US states (Providence St Joseph Health). Data were observed for patients (no age restriction) with one or more IMID and for unmatched controls without IMIDs. COVID-19 was identified with a positive nucleic acid amplification test result for SARS-CoV-2. Two timeframes were analysed: March 1, 2020–Dec 25, 2021 (pre-omicron period), and Dec 26, 2021–Aug 30, 2022 (omicron-predominant period). Primary outcomes were hospitalisation, mechanical ventilation, and mortality in patients with COVID-19. Factors, including IMID diagnoses, comorbidities, long-term use of IMMs, and COVID-19 vaccination status, were analysed with multivariable logistic regression (LR) and extreme gradient boosting (XGB).

### Findings

Of 2 167 656 patients tested for SARS-CoV-2, 290 855 (13·4%) had confirmed COVID-19: 15 397 (5·3%) patients with IMIDs and 275 458 (94·7%) without IMIDs. In the pre-omicron period, 169 993 (11·2%) of 1 517 295 people who were tested for COVID-19 tested positive, of whom 23 330 (13·7%) were hospitalised, 1072 (0·6%) received mechanical ventilation, and 5294 (3·1%) died. Compared with controls, patients with IMIDs and COVID-19 had higher rates of hospitalisation (1176 [14·6%] vs 22 154 [13·7%]; p=0·024) and mortality (314 [3·9%] vs 4980 [3·1%]; p<0·0001). In the omicron-predominant period, 120 862 (18·6%) of 650 361 patients tested positive for COVID-19, of whom 14 504 (12·0%) were hospitalised, 567 (0·5%) received mechanical ventilation, and 2001 (1·7%) died. Compared with controls, patients with IMIDs and COVID-19 (7327 [17·3%] of 42 249) had higher rates of hospitalisation (13 422 [11·8%] vs 1082 [14·8%]; p<0·0001) and mortality (1814 [1·6%] vs 187 [2·6%]; p<0·0001). Age was a risk factor for worse outcomes (adjusted odds ratio [OR] from 2·1 [95% CI 2·0–2·1]; p<0·0001 to 3·0 [2·9–3·0]; p<0·0001), whereas COVID-19 vaccination (from 0·082 [0·080–0·085]; p<0·0001 to 0·52 [0·50–0·53]; p<0·0001) and booster vaccination (from 2·1 [2·0–2·2]; p<0·0001 to 3·0 [2·9–3·0]; p<0·0001) status were associated with better outcomes. Seven chronic comorbidities were significant risk factors during both time periods for all three outcomes: atrial fibrillation, coronary artery disease, heart failure, chronic kidney disease, chronic obstructive pulmonary disease, chronic liver disease, and cancer. Two IMIDs, asthma (adjusted OR from 0·33 [0·32–0·34]; p<0·0001 to 0·49 [0·48–0·51]; p<0·0001) and psoriasis (from 0·52 [0·48–0·56] to 0·80 [0·74–0·87]; p<0·0001), were associated with a reduced risk of severe outcomes. IMID diagnoses did not appear to be significant risk factors themselves, but results were limited by small sample size, and vasculitis had high feature importance in LR. IMMs did not appear to be significant, but less frequently used IMMs were limited by sample size. XGB outperformed LR, with the area under the receiver operating characteristic curve for models across different time periods and outcomes ranging from 0·77 to 0·92.

### Interpretation

Our results suggest that age, chronic comorbidities, and not being fully vaccinated might be greater risk factors for severe COVID-19 outcomes in patients with IMIDs than the use of IMMs or the IMIDs themselves. Overall, there is a need to take age and comorbidities into consideration when developing COVID-19 guidelines for patients with IMIDs. Further research is needed for specific IMIDs (including IMID severity at the time of SARS-CoV-2 infection) and IMMs (considering dosage and timing before a patient's first COVID-19 infection).

### Funding

Pfizer, Novartis, Janssen, and the National Institutes of Health.

## Training Dataset
Used EHR records from PSJH system contains PHI information.


## Code Structure
* [analyses_codes](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/analyses_codes) contains all analyses codes used to conduct all of the data preprocessing and analyses presented in the paper
* [utilities_functions](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/utilities_functions) contains all utilities functions codes used to support data preprocessing
* [clinical_concepts_dictionary](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/clinical_concepts_dictionary) contains all dictionaries used to define clinical concepts for both conditions and medications
* [code_for_reviewer_responses](https://github.com/Hadlock-Lab/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/code_for_reviewer_responses) contains all additional codes used to address reviewers' comments
* [R_scripts_for_figures](https://github.com/Qi-ISB/Risk_factors_for_severe_COVID19_outcomes_a_study_of_IMIDs_medications_comorbidities/tree/main/R_scripts_for_figures) contains all R scripts used to generate figures in both main text and supplementary material
