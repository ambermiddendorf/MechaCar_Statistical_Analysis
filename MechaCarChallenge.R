library(dplyr)

mpg <- read.csv('Resources/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

mpg_lm <-lm(mpg ~ ., data = mpg)

summary(mpg_lm)

coil <- read.csv('Resources/Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

total_summary <- summarize(coil, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_group <- group_by(coil, Manufacturing_Lot)

lot_summary <- summarize(lot_group, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))


t.test(coil$PSI, mu=1500)

Lot1<-subset(coil, Manufacturing_Lot=="Lot1")
Lot2<-subset(coil, Manufacturing_Lot=="Lot2")
Lot3<-subset(coil, Manufacturing_Lot=="Lot3")

t.test(Lot1$PSI, mu=1500)
t.test(Lot2$PSI, mu=1500)
t.test(Lot3$PSI, mu=1500)
