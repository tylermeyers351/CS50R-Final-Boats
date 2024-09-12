library(testthat)

source("../R/totalDeathsPerYear.R")

# Test 1: Valid year input
test_that("Deadliest day is correct for a valid year", {
  expect_equal(totalDeathsPerYear(2014), 563)  # Adjust expected result as per your data
})

# Test 2: Non-numeric input throws an error
test_that("Non-numeric input throws an error", {
  expect_error(totalDeathsPerYear("2014"), "`x` must be a numeric vector.")
})