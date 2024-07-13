data <- Team1_subset

## getting all the mean and SD stats for all the variables

##School Level Data: winning pct, MV, percent on reduced lunch, private schools
## schools percent black, percent latinx, students per grade, pupils per teacher, 
##expendictures per pupil
names(data)

data$T1.Expenditures.Pupil <- as.numeric(gsub("[^0-9.]", "", data$T1.Expenditures.Pupil))
school_wide_vars <- c("Win.Percentage", "MV", "T1.Free.and.Reduced.Lunch", 
                      "T1.Black", "T1.Hispanic", "T1.Grades.9.12.Students", 
                      "T1.Pupil.Teacher.Ratio", "T1.Expenditures.Pupil")

summary_stats <- sapply(data[school_wide_vars], function(x) c(mean = mean(x, na.rm = TRUE), sd = sd(x, na.rm = TRUE)))


print(summary_stats)

# Calculate the proportion of data that is 1 in the "T1.Private.School" column
proportion_private_school <- mean(data$T1.Private.School, na.rm = TRUE)
sd_private_school <- sd(data$T1.Private.School, na.rm = TRUE)
# Print the proportion
print(sd_private_school)

# Inspect the structure of the selected variables
str(data[school_wide_vars])
