library(dplyr)

mpg <- read.csv('Resources/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)



mpg_lm <-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg)

summary(mpg_lm)
