library(testthat)

source("../R/deadliestDayPerYear.R")

# Test 1: Valid year input
test_that("Deadliest day is correct for a valid year", {
  expect_equal(deadliestDayPerYear(2014), "Saturday")  # Adjust expected result as per your data
})

# Test 2: Non-numeric input throws an error
test_that("Non-numeric input throws an error", {
  expect_error(deadliestDayPerYear("2014"), "`x` must be a numeric vector.")
})

# Test 3: Year out of range throws an error
test_that("Year out of range throws an error", {
  expect_error(deadliestDayPerYear(2023), "`x` Between or equal to 2014 and 2022.")
  expect_error(deadliestDayPerYear(2013), "`x` Between or equal to 2014 and 2022.")
})

# Test 4: Boundary years (2014 and 2022) return correct day
test_that("Boundary years (2014 and 2022) return correct day", {
  expect_equal(deadliestDayPerYear(2014), "Saturday")  # Adjust expected result
  expect_equal(deadliestDayPerYear(2022), "Saturday")    # Adjust expected result
})
