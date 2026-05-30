
***** Operating environment: Stata 17

clear
set line 240

capture log close

cd "C:/Users/YourName/Documents/HES-off-campus-mobility"
import delimited using "./HEI_level/02_UniversityW_destination_choice(全样本，这个不传github).csv" , delimiter(",")


****************** perform regression on each group ****************

cmset case_id, noalt

foreach grp in 4 5 6 8 9 {
    cmrologit chosen restaurants firms shopping cultural basicservice sports medical parks tourist poidiv  subway_time taxi_time if group==`grp'
    
    estout using "./HEI_level/02_Logit_model_results.csv", cells(b(star fmt(%9.3f)) se(fmt(%9.3f) par)) starlevel(* 0.1 ** 0.05 *** 0.01) append
}


****************** perform regression on all students ****************

cmrologit chosen restaurants firms shopping cultural basicservice sports medical parks tourist poidiv  subway_time taxi_time

estout using "./HEI_level/02_Logit_model_results.csv", cells(b(star fmt(%9.3f)) se(fmt(%9.3f) par)) starlevel(* 0.1 ** 0.05 *** 0.01) append


exit





