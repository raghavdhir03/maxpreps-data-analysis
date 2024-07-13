library(leaps)

complete_complete_data <- na.omit(data)
response <- complete_data$MV
predictors <- data.frame(complete_data$T1.Free.and.Reduced.Lunch,
                complete_data$T1.Expenditures.Pupil,
                complete_data$T1.Pupil.Teacher.Ratio,
                complete_data$T1.American.Indian.Alaska.Native,
                complete_data$T1.Asian.or.Asian.Pacific.Islander,
                complete_data$T1.Hispanic,
                complete_data$T1.Black,
                complete_data$T1.Nat..Hawaiian.or.Other.Pacific.Isl.,
                complete_data$T1.Two.or.More.Races,
                complete_data$num.boys.Sports,
                complete_data$T1.Grades.9.12.Students)

leaps_output <- leaps(predictors, response, method = "r2", nbest = 2)

# Access the which matrix
which_matrix <- leaps_output$which
print(which_matrix)


# Access the R-squared values
r2_values <- leaps_output$r2
print(r2_values)