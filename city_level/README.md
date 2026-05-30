This folder contains the data and code for the city-level analysis in the manuscript, which investigates the spatial distribution of higher education students’ off-campus visits across Beijing and examines the built-environment and accessibility factors associated with student visit volume. The models correspond to the Poisson regression analysis reported in the paper.

## Data

- `BJ_visit_volume.zip`: processed grid-level dataset used as the input for the Poisson regression models. The dataset contains aggregate visit-volume measures and built-environment/accessibility variables for the city-level analysis. Due to file size limitations, a compressed file has been uploaded here. It should be decompressed to your local machine before running the regression code.

## Code

- `Poisson_regression.do`: Stata script for estimating the Poisson regression models reported in the city-level analysis.

## Requirements

- Stata 17

## Input and output

The script uses the following input file (after decompressing BJ_visit_volume.zip):

```text
BJ_visit_volume.csv
```

After the script is executed, it will create the following output file in the current folder:

```text
BJ_Results.csv
```

## Notes

The output file contains the model results generated from the processed grid-level dataset. Minor differences may occur across software environments or package versions, but the script is designed to reproduce the city-level Poisson regression workflow described in the paper.
