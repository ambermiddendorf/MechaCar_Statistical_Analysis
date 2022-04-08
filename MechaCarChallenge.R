library(dplyr)

mpg <- read.csv('Resources/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)


mpg_lm <-lm(mpg ~ ., data = mpg)

summary(mpg_lm)


