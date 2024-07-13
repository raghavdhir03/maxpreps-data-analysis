library(stargazer)
library(gtsummary)
library(broom)

#import data table
data <- Team1_subset
data$T1.Expenditures.Pupil <- as.numeric(gsub("[^0-9.]", "", data$T1.Expenditures.Pupil))
#column names
names(data)

#make varibales for the predictors 
x1 <- data$T1.Free.and.Reduced.Lunch
x2 <- data$T1.Expenditures.Pupil
x3 <- data$T1.Pupil.Teacher.Ratio
#x4 <- data$T1.White
x4 <- data$T1.American.Indian.Alaska.Native
x5 <- data$T1.Asian.or.Asian.Pacific.Islander
x6 <- data$T1.Hispanic
x7 <- data$T1.Black
x8 <- data$T1.Nat..Hawaiian.or.Other.Pacific.Isl.
x9 <- data$T1.Two.or.More.Races
x10 <- data$num.boys.Sports
x11 <- data$T1.Grades.9.12.Students
y1 <- data$MV
y2 <- data$Win.Percentage





##Full Model
covariate_labels <- c("Free and Reduced Lunch", 'District Expentitures per Pupil',
                      'Pupil/Teacher Ratio', 'Percentage American Indian/Alaska Native',
                      'Percentage Asian or Asian/Pacific Islander',
                      'Percentage Hispanic',
                      'Percentage Black',
                      'Percentage Nat. Hawaiian or Other Pacific Isl.',
                      'Percentage Two or more Races',
                      'Num of Sports Offered',
                      'Total Students Grades 9-12')
dep_var_label <- c("Margin of Victory", "Winning Percentage")
model1 <- lm(y1 ~ x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 +x9 + x10 + x11)

model2 <- lm(y2 ~ x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 +x9 + x10 + x11)

stargazer(model1, model2, covariate.labels = covariate_labels,
          dep.var.labels = dep_var_label)

##Full Model with no private schools included
subset_df <- data[data$T1.Private.School == 0, ]
model3 <- lm(subset_df$MV ~ T1.Free.and.Reduced.Lunch + T1.Expenditures.Pupil + 
               T1.Pupil.Teacher.Ratio + T1.American.Indian.Alaska.Native + 
               T1.Asian.or.Asian.Pacific.Islander + T1.Hispanic + 
               T1.Black + T1.Nat..Hawaiian.or.Other.Pacific.Isl. + 
               T1.Two.or.More.Races + num.boys.Sports + T1.Grades.9.12.Students, data = subset_df)

model4 <- lm(subset_df$Win.Percentage ~ T1.Free.and.Reduced.Lunch + 
               T1.Expenditures.Pupil + T1.Pupil.Teacher.Ratio + 
               T1.American.Indian.Alaska.Native + T1.Asian.or.Asian.Pacific.Islander + 
               T1.Hispanic + T1.Black + T1.Nat..Hawaiian.or.Other.Pacific.Isl. + 
               T1.Two.or.More.Races + num.boys.Sports + T1.Grades.9.12.Students, data = subset_df)

full_no_private <- stargazer(model3, model4, covariate.labels = covariate_labels,
          dep.var.labels = dep_var_label)


full_no_private

##Model With no Racial Predictors
covariate_labels = c("Free and Reduced Lunch", "District Expenditures per Pupil",
                     "Pupil/Teacher Ratio", "Number of Sports Offered", 
                     "Total Students Grades 9-12")

model4 <- lm(y1 ~ x1+ x2 + x3 + x10 + x11)
model5 <- lm(y2 ~ x1+ x2 + x3 + x10 + x11)
stargazer(model4, model5, covariate.labels = covariate_labels,
          dep.var.labels = dep_var_label)

anova(model4)


##model with no black included
covariate_labels <- c("Free and Reduced Lunch", 'District Expentitures per Pupil',
                      'Pupil/Teacher Ratio', 'Percentage American Indian/Alaska Native',
                      'Percentage Asian or Asian/Pacific Islander',
                      'Percentage Hispanic',
                      'Percentage Nat. Hawaiian or Other Pacific Isl.',
                      'Percentage Two or more Races',
                      'Num of Sports Offered',
                      'Total Students Grades 9-12')
model6 <- lm(y1 ~ x1 + x2 + x3 + x4 + x5 + x6 + x8 +x9 + x10 + x11)
model7 <- lm(y2 ~ x1 + x2 + x3 + x4 + x5 + x6 + x8 +x9 + x10 + x11)
stargazer(model6, model7, type = 'text', covariate.labels = covariate_labels,
          dep.var.labels = dep_var_label)
#plot(data$T1.Free.and.Reduced.Lunch, data$MV, 
     #main = "Scatter Plot of T1.Free.and.Reduced.Lunch vs. MV",
     #xlab = "T1.Free.and.Reduced.Lunch", 
     #ylab = "MV")