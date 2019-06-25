context("Output of spss.format.compute")

test_that("spss.format.compute returns proper output given proper input", {
  expect_equal(spss.format.compute("new_var", spss.format.max("var1", "var2")), "COMPUTE new_var = MAX(var1,var2).")
})
