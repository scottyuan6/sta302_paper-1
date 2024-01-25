#Test 1
arrested_data$AGE_COHORT |>class() == "character"
arrested_data$ARREST_COUNT |>class() == "integer"
arrested_data$ARREST_COUNT|> max() <= 30000

#Test2
arrested_sex$SEX|> class() == "character"
arrested_sex$n|> class() == "numeric"
arrested_sex$n |> min() >= 0

#Test 3
arrested_data$CATEGORY |> class() == "character"
arrested_data$CATEGORY |>
  unique() |>
  length() == 6