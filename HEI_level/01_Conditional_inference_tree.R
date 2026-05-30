## Operating env: R 4.2.0
## Install packages
# install.packages("party")
# install.packages("partykit")

# Load packages
library(party)
library(partykit)

# Read file
data <- read.csv("C:/Users/YourName/Documents/HES-off-campus-mobility/HEI_level/01_UniversityW_student_info.csv")

# Setting parameters
control_params <- ctree_control(
  maxdepth = 20,      
  mincriterion = 0.95, 
  minbucket = 200   
)

# Conditional inference tree
ctree_model <- ctree(off_campus_duration ~ gender + level + economics + law + humanities
                     + sciences + engineering + medicine + arts + expenditure + discretionary, 
                     data = data,
                     control = control_params)

# Export the results
sink("C:/Users/YourName/Documents/HES-off-campus-mobility/HEI_level/01_CIT_output.txt", split=TRUE)  # 控制台同样输出
print(ctree_model)
sink() 
plot(ctree_model)


