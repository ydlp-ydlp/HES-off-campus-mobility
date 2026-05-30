
***** Operating environment: Stata 17

clear
set line 240

capture log close


cd "C:/Users/YourName/Documents/HES-off-campus-mobility"
import delimited using "./city_level/BJ_visit_volume.csv" , delimiter(",")


**************** Poisson regression ******************

foreach yvar in rs_visit ics_visit ocs_visit hes_visit nonhes_visit {
    poisson `yvar' restaurants firms shopping cultural basicservice sports medical parks tourist poidiv dist2station dist2campus, robust
    
    estout using "./city_level/BJ_Results.csv", cells(b(star fmt(%9.3f)) se(fmt(%9.3f) par)) starlevel(* 0.1 ** 0.05 *** 0.01) append
}


exit


