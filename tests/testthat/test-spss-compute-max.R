context("Output of spss.compute.max")

test_that("spss.compute.max returns proper output given proper input", {
  expect_equal(spss.compute.max("dob", "dob_f", append = "new."), "COMPUTE new.dob = MAX(dob,dob_f).")
})
