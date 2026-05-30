
This folder contains the data and code for the higher education institute (HEI)-level analysis in the manuscript. It includes two components: a conditional inference tree analysis used to identify student groups with different off-campus stay durations, and grouped destination choice models used to examine differences in students’ destination preferences.

## Data and privacy

The full HEI-level survey dataset cannot be publicly released due to the data management regulations of University W and the need to protect respondents’ privacy. Therefore, this folder provides a randomly selected subsample of 100 anonymized responses.

The subsample is provided to demonstrate the data structure and analytical workflow. Because it is not the full dataset used in the paper, the results generated from these files may not fully reproduce the estimates reported in the manuscript.

## Component 1: Conditional inference tree

### Files

- `01_UniversityW_student_info(subsample).csv`: anonymized subsample dataset used for the conditional inference tree analysis.
- `01_Conditional_inference_tree.R`: R script for estimating the conditional inference tree and exporting the results.

### Requirements

- R 4.2.0

### Input and output

Input:

```text
01_UniversityW_student_info(subsample).csv
```

Output created in the current folder:

```text
01_CIT_output.txt
```

## Component 2: Grouped destination choice model

### Files

- `02_UniversityW_destination_choice(subsample).csv`: anonymized subsample dataset used for the grouped destination choice models.
- `02_Logit_model.do`: Stata script for estimating the grouped destination choice models.

### Requirements

- Stata 17

### Input and output

Input:

```text
02_UniversityW_destination_choice(subsample).csv
```

Output created in the current folder:

```text
02_Logit_model_results.csv
```
