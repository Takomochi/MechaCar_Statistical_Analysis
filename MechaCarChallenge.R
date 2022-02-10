library(dplyr)

# Deliverable 1
# Import and read MechaCar_mpg.csv file.
car_df <- read.csv("Resources/MechaCar_mpg.csv")

# Linear Regression
lm(mpg~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=car_df)

# Summary for the linera regression
summary(lm(mpg~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=car_df))


# Deliverable 2
# Import and read Suspension_Coil.csv file.
coil_df <- read.csv("Resources/Suspension_Coil.csv")

total_summary <- coil_df %>% 
    summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI),SD=sd(PSI))

lot_summary <- coil_df %>% group_by(Manufacturing_Lot) %>% 
    summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI),SD=sd(PSI))


# Deliverable 3
# All manufacturing lot
t.test(coil_df$PSI, mu=1500)

# Lot 1 
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot=='Lot1'), mu=1500)

# Lot 2
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot=='Lot2'), mu=1500)

# Lot 3
t.test(subset(coil_df$PSI, coil_df$Manufacturing_Lot=='Lot3'), mu=1500)