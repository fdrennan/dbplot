context("raster")

test_that("Setting the complete argument returns a ggplot",{
  expect_is(dbplot_raster(mtcars, wt, mpg, complete = TRUE), "ggplot") 
})


test_that("The correct number of rows are returned when using complte",{
  expect_equal(
    nrow(db_compute_raster(mtcars, wt, mpg, complete = TRUE)),
    600
  )
  expect_equal(
    nrow(db_compute_raster(mtcars, 
                           wt, mpg, 
                           complete = TRUE, 
                           resolution = 10)),
    80
  )
})

