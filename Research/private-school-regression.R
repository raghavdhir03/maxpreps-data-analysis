private <- private_school_subset


p1 <- private$T1.Pupil.Teacher.Ratio
#x4 <- private$T1.White
p2 <- private$T1.American.Indian.Alaska.Native
p3 <- private$T1.Asian.or.Asian.Pacific.Islander
p4 <- private$T1.Hispanic
p5 <- private$T1.Black
p6 <- private$T1.Nat..Hawaiian.or.Other.Pacific.Isl.
p7 <- private$T1.Two.or.More.Races
p8 <- private$num.boys.Sports
p9 <- private$T1.Grades.9.12.Students
private_y1 <- private$MV
private_y2 <- private$Win.Percentage

##Full Model
covariate_labels <- c('Pupil/Teacher Ratio', 'Percentage American Indian/Alaska Native',
                      'Percentage Asian or Asian/Pacific Islander',
                      'Percentage Hispanic',
                      'Percentage Black',
                      'Percentage Nat. Hawaiian or Other Pacific Isl.',
                      'Percentage Two or more Races',
                      'Num of Sports Offered',
                      'Total Students Grades 9-12')
dep_var_label <- c("Margin of Victory", "Winning Percentage")
private_model1 <- lm(private_y1 ~ p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 +p9)

private_model2 <- lm(private_y2 ~ p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 +p9)

stargazer(private_model1, private_model2, type = 'text', covariate.labels = covariate_labels,
          dep.var.labels = dep_var_label)