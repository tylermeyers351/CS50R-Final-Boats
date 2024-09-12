library(dplyr)

load("../boats.RData")

totalInjuriesPerYear <- function(x) {
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

  injuries <- data |>
    filter(Year == x) |>
    summarize(NumberInjured = sum(NumberInjured, na.rm = TRUE)) |>
    pull(NumberInjured)

  return(injuries)

}