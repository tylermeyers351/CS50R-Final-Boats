# This file loads in the respective libraries and loads/transforms the csv.
library(ggplot2)
library(dplyr)
library(tidyverse)
library(stringr)
library(devtools)
library(testthat)

data <- read.csv("bard-2014-2022-ReleasableAccidents.csv")

# Clean up data
data <- data |>
  select(
    c(
      State,
      Year,
      RedactedNarrative,
      NumberDeaths,
      NumberInjured,
      WaterConditions,
      Wind,
      Visibility,
      AccidentEvent1,
      AccidentEvent2,
      AccidentCause1,
      AccidentCause2,
      DayofWeek
    ))

save(data, file="boats.RData")