context("Output of spss.rtrim")

test_that("spss.rtrim returns proper output given proper input", {
  expect_equal(spss.rtrim("some_var"), "RTRIM(some_var)")
})
