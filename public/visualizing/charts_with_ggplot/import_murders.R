packages <- c("devtools", "dplyr", "foreign")
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())))  
}

library(foreign)
library(dplyr)


temp <- tempfile()
unzip("data/SHR76_16.sav.zip", exdir="data", overwrite=T)
unlink(temp)


data_labels <- read.spss("data/SHR76_16.sav", to.data.frame=TRUE)
data_only <- read.spss("data/SHR76_16.sav", to.data.frame=TRUE, use.value.labels=F)


new_labels <- select(data_labels,
                     ID, CNTYFIPS, Ori, State, Agency, AGENCY_A,
                     Agentype_label=Agentype,
                     Source_label=Source,
                     Solved_label=Solved,
                     Year,
                     Month_label=Month,
                     Incident, ActionType,
                     Homicide_label=Homicide,
                     Situation_label=Situation,
                     VicAge,
                     VicSex_label=VicSex,
                     VicRace_label=VicRace,
                     VicEthnic, OffAge,
                     OffSex_label=OffSex,
                     OffRace_label=OffRace,
                     OffEthnic,
                     Weapon_label=Weapon,
                     Relationship_label=Relationship,
                     Circumstance_label=Circumstance,
                     Subcircum, VicCount, OffCount, FileDate,
                     fstate_label=fstate,
                     MSA_label=MSA)

## OK, we're dropping ID, CNTYFIPS, Ori, State, Agency, and AGENCY_A columns
## And we're going to rename the other ones so that we know they're specifically values


new_data_only <- select(data_only,
                        Agentype_value=Agentype,
                        Source_value=Source,
                        Solved_value=Solved,
                        Month_value=Month,
                        Homicide_value=Homicide,
                        Situation_value=Situation,
                        VicSex_value=VicSex,
                        VicRace_value=VicRace,
                        OffSex_value=OffSex,
                        OffRace_value=OffRace,
                        Weapon_value=Weapon,
                        Relationship_value=Relationship,
                        Circumstance_value=Circumstance,
                        fstate_value=fstate,
                        MSA_value=MSA)

# cbind() means column binding-- it only works if the number of rows are the same

murders <- cbind(new_labels, new_data_only)

# Now we're going to use the select() function to reorder the columns so labels and values are next to each other

murders <- select(murders,
                   ID, CNTYFIPS, Ori, State, Agency, AGENCY_A,
                   Agentype_label, Agentype_value,
                   Source_label, Source_value,
                   Solved_label, Solved_value,
                   Year,
                   Month_label, Month_value,
                   Incident, ActionType,
                   Homicide_label,Homicide_value,
                   Situation_label,Situation_value,
                   VicAge,
                   VicSex_label,VicSex_value,
                   VicRace_label,VicRace_value,
                   VicEthnic, OffAge,
                   OffSex_label,OffSex_value,
                   OffRace_label,OffRace_value,
                   OffEthnic,
                   Weapon_label,Weapon_value,
                   Relationship_label,Relationship_value,
                   Circumstance_label,Circumstance_value,
                   Subcircum, VicCount, OffCount, FileDate,
                   fstate_label,fstate_value,
                   MSA_label,MSA_value)

# remove the old data frames because they're huge and we want to free up memory
rm(data_labels)
rm(data_only)
rm(new_labels)
rm(new_data_only)
rm(packages)
rm(temp)
file.remove("data/SHR76_16.sav")