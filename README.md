Below are the instructions to replicate results from the paper *"Exploring Influences on ICT Adoption in German Schools: A UTAUT-Based Structural Equation Model"*.

#### Required downloads
1. Download and extract the [ICILS 2018 SPSS Data](https://doi.org/10.58150/ICILS_2018_data)
2. Download [IEA's DB Analyzer](https://www.iea.nl/data-tools/tools). Version used: 5.0.16.

#### Data Preparation
1. Open IEA's DB Analyzer
2. Access the Merge Module with `SPSS` selected
3. Select the survey data directory (such as `\Downloads\ICILS2018_IDB_SPSS\ICILS2018_IDB_SPSS\Data`)
4. Select `ICILS` as the study, `ICILS 2018` as the cycle, and `Grade 8` as the target population
5. Select `Germany` as a participant and click next
6. Select the `School`and `Teacher`files
7. Select the following variables: 
   
##### School file
Social Influence: `P_EXPLRN`, `P_EXPTCH`, `P_VWICT`.

##### Teacher file
Effort Expectancy: `T_ICTEFF, T_COLICT`

Performance Expectancy: `T_VWPOS, T_VWNEG`
   
Facilitating conditions: `T_RESRC, T_PROFREC, T_PROFSTR`
   
Behavioral Intention: `T_CODEMP, T_ICTEMP`
   
Use Behavior: `T_USEUTIL, T_CLASACT, T_USETOOL`

81 ID and sampling variables will automatically be selected.

8. Under "Output", specify the SPSS syntax file name: `TeacherPrincipalMerge.sps`
9. Click 'start SPSS' to create the syntax file
10. Press CTRL + A followed by Ctrl + R to create the `TeacherPrincipalMerge.sav` file
11. Place this file into the "Data" directory

#### SEM Estimation
Simply drag and drop the desired `.do` file into Stata's command window to automatically fit the model.
