library(dplyr)

load("../boats.RData")

deadliestDayPerYear <- function(x) {
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

  day <- data |>
    filter(Year == x) |>
    group_by(DayofWeek) |>
    summarize(count = n()) |>
    arrange(desc(count)) |>
    slice(1)

  return(day$DayofWeek)
}
