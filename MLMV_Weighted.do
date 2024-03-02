import spss using "./Data/TeacherPrincipalMerge.sav"
svyset IDTEACH [pweight=TOTWGTT], jkrweight(TRWGT*, multiplier(1)) vce(jackknife, mse)

svy jackknife : sem (Social_Influence -> P_EXPLRN P_VWICT P_EXPTCH Facilitating_Conditions) (Performance_Expectancy -> T_VWPOS T_VWNEG Effort_Expectancy) (Facilitating_Conditions -> T_RESRC T_PROFSTR T_PROFREC Effort_Expectancy Use_Behavior) (Effort_Expectancy -> T_ICTEFF T_COLICT Behavioral_Intention) (Behavioral_Intention -> T_ICTEMP T_CODEMP Use_Behavior) (Use_Behavior -> T_USEUTIL T_USETOOL T_CLASACT), covstruct(_lexogenous, diagonal) method(mlmv) latent(Social_Influence Effort_Expectancy Performance_Expectancy Facilitating_Conditions Behavioral_Intention Use_Behavior) nocapslatent standardized

estat gof, stats(all)
