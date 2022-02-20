library(dplyr)

# deliverable 1
mechaData <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mechaData)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaData)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaData))

# deliverable 2
coil_data <- read.csv(file='Suspension_Coil.csv')
head(coil_data)

total_summary <- coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD = sd(PSI), .groups = 'keep')
head(total_summary)

lotSummary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD = sd(PSI), .groups = 'keep') 
head(lotSummary)

#deliverable 3
# simple t.test()
sampleTablePSI <- coil_data %>% sample_n(50)
head(sampleTablePSI)
t.test(sampleTablePSI$PSI,coil_data$PSI)

# t.test for all lots
sampleLot1 <- coil_data %>% filter(Manufacturing_Lot=='Lot1') %>% sample_n(50)
sampleLot2 <- coil_data %>% filter(Manufacturing_Lot=='Lot2') %>% sample_n(50)
sampleLot3 <- coil_data %>% filter(Manufacturing_Lot=='Lot3') %>% sample_n(50)

t.test(sampleLot1$PSI,coil_data$PSI)
t.test(sampleLot2$PSI,coil_data$PSI)
t.test(sampleLot3$PSI,coil_data$PSI)
