# HES-off-campus-mobility

This repository provides data and codes for the manuscript **“Higher Education Students Interacting with Cities: A Multiscale Analysis of Off-Campus Mobility in Beijing, China.”** It contains processed data and code used for the city-level and higher education institute (HEI)-level analyses reported in the paper.

## Abstract

Higher education students (HES) engage extensively with urban environments and contribute to urban consumption, tourism, and the innovation economy. However, few studies have comprehensively examined HES off-campus mobility and the spatial distribution of their destinations, especially in the context of Chinese gated campuses. This study combines large-scale mobility data and survey data to analyze HES off-campus mobility at both city and higher education institute (HEI) levels. At the city level, mobile phone data from November 2023 were utilized to examine off-campus mobility of HES in Beijing, identify factors influencing HES visit volume, and compare HES mobility with that of non-HES young adults. At the HEI level, we collected 2,917 valid survey responses from a representative university and investigated group-level heterogeneity in students’ off-campus stay duration and destination preferences. Findings reveal that 66.39% of Beijing’s residential students leave campuses at least four times per month. Compared with non-HES young adults, HES show distinctive travel patterns, including more frequent departures from campus, temporal rhythms shaped by course schedules, and stronger preferences for tourist attractions. Notable differences also emerge between residential and commuting students, as well as across gender, academic level, time availability, and major discipline. This study explains how students in an on-campus housing context move beyond campus boundaries and access urban opportunities. The findings suggest that policymakers should consider students’ unique travel rhythms, make better use of their role as tourists, and design attractive, tailored destinations to better leverage their role in promoting urban development.

## Repository structure

```text
.
├── README.md
├── city_level/
│   ├── README.md
│   ├── BJ_visit_volume.csv
│   └── Poisson_regression.do
└── HEI_level/
    ├── README.md
    ├── 01_UniversityW_student_info(subsample).csv
    ├── 01_Conditional_inference_tree.R
    ├── 02_UniversityW_destination_choice(subsample).csv
    └── 02_Logit_model.do
```

## Folder descriptions

- `city_level/` contains the processed grid-level dataset and Stata code used for the city-level analysis. This part of the study examines the spatial distribution of higher education students’ off-campus visits in Beijing and estimates Poisson regression models for visit volume.
- `HEI_level/` contains subsample survey datasets and code used for the HEI-level analysis. This part of the study examines student-group heterogeneity using a conditional inference tree and estimates group-specific destination choice models.

## Data and privacy

The datasets shared in this repository have been processed and anonymized to protect privacy and comply with data-use restrictions.

For the city-level analysis, the mobile phone data have been aggregated to grid-level statistics. The shared dataset contains only aggregate-level information, such as visit volumes and built-environment characteristics at the grid level. It does not contain individual trajectories, personal identifiers, or any raw mobile phone records.

For the HEI-level analysis, the full survey dataset cannot be publicly released due to the data management regulations of University W and the need to protect respondents’ privacy. Instead, we provide a randomly selected subsample of 100 anonymized survey responses. This subsample is intended to demonstrate the structure of the data and the implementation of the analytical workflow. Because only a subsample is provided, the HEI-level results generated from these files may not exactly reproduce the estimates reported in the paper.

## Software requirements

The code in this repository requires:

- Stata 17
- R 4.2.0

Please see the README files in the corresponding subfolders for details on inputs, outputs, and execution steps.

## Citation

If you use the data or code in this repository, please cite the associated article.
