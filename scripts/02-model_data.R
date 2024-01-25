# Create a histogram to visualize the distribution of arrests across different age cohorts.
ggplot(arrested_data, aes(x = AGE_COHORT)) + 
  geom_histogram(stat = "count", fill = "black", color = "black") +
  labs(title = "Figure 1: Age Cohort Distribution of Arrests",
       x = "Age Cohort",
       y = "Count of Arrests") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# import dplyr to calculate the count and percentage of arrests by sex.
arrested_sex <- arrested_data %>%
  count(SEX) %>%
  mutate(Percentage = n / sum(n) * 100)
# make a pie chart to visualize the distribution by sex.
ggplot(arrested_sex, aes(x = "", y = n, fill = SEX)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  geom_text(aes(label = paste(SEX, ': ', n, ' (', round(Percentage, 2), '%)', sep = "")),
            position = position_stack(vjust = 0.5)) +
  labs(title = "Figure 2: Distribution of Arrests by Sex",
       x = NULL,
       y = NULL,
       fill = "Sex") +
  theme_minimal() +
  theme(axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank())


# Create a stacked bar chart to show the distribution of arrests by both sex and crime category.
ggplot(arrested_data, aes(x = SEX, y = ..count.., fill = CATEGORY)) + 
  geom_bar(position = "stack") +
  labs(title = "Figure 3: Distribution of Arrests by Sex and Crime Category",
       x = "Sex",
       y = "Count of Arrests",
       fill = "Crime Category") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))