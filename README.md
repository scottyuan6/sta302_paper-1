# sta302_paper-1
# chatgpt is used at the 00-simulate_data.R
# Here is the entire chat
library(ggplot2)

# Create a data frame with the age cohorts and the count of arrests
data <- data.frame(
  Age_Cohort = factor(c('<18', '18 to 24', '25 to 34', '35 to 44', '45 to 54', '55 to 64', '65+', 'Unknown'), 
                     levels = c('<18', '18 to 24', '25 to 34', '35 to 44', '45 to 54', '55 to 64', '65+', 'Unknown')),
  Count_Of_Arrests = c(12000, 25000, 28000, 27000, 20000, 13000, 7000, 3000)
)

# Create the bar plot
ggplot(data, aes(x=AgeCohort, y=CountOfArrests, fill=AgeCohort)) + 
  geom_bar(stat="identity", color="black", fill="black") +
  theme_minimal() +
  labs(title="Figure 1: Age Cohort Distribution of Arrests",
       x="Age Cohort",
       y="Count of Arrests") +
  theme(legend.position="none")

