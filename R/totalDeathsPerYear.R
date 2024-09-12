library(dplyr)

load("../boats.RData")

totalDeathsPerYear <- function(x) {
  if (!is.numeric(x)) {
    stop("`x` must be a numeric vector.")
  }
  if (any(is.na(x))) {
    warning("`x` contains one or more NA values.")
    return(NA)
  }
  if (x < 2014 | x > 2022) {
    stop("`x` Between or equal to 2014 and 2022.")
  }

  deaths <- data |>
    filter(Year == x) |>
    summarize(NumberDeaths = sum(NumberDeaths, na.rm = TRUE)) |>
    pull(NumberDeaths)

  return(deaths)

}