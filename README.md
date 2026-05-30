# HES-off-campus-mobility

This repository provides data and codes for the manuscript **“Higher Education Students Interacting with Cities: A Multiscale Analysis of Off-Campus Mobility in Beijing, China.”** It contains processed data and code used for the city-level and higher education institute (HEI)-level analyses reported in the paper.

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
