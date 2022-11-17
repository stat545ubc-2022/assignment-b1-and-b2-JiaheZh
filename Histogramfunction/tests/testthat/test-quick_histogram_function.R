test_that("Function working properly", {
  #expect the function to get error if the var_x entered is not a column from the dataset.
  expect_error(quick_histogram_function(gapminder, month), "var_x not exist as a column in the data.")
  #expect the function to get error if the var_x entered is not a numerical variable.
  expect_error(quick_histogram_function(gapminder, continent), "var_x should be a numerical variable.")
  #testing that printing ggplot object actually works
  p <- quick_histogram_function(gapminder, pop)
  expect_error(print(p), NA)
})

test_that("Plot returns ggplot object",{
  p <- quick_histogram_function(gapminder, pop)
  expect_s3_class(p, "ggplot")
})

test_that("Plot uses correct data",{
  p <- quick_histogram_function(gapminder, pop)
  expect_identical(p$data, gapminder)
})

test_that("Y-axis is labelled 'count'", {
  p <- quick_histogram_function(gapminder, pop)
  expect_identical(p$labels$y, "count")
})


