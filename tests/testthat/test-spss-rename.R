context("Output of spss.rename")

test_that("spss.rename returns proper output with single variables", {
  expect_equal(spss.rename("oldname", "newname"), "RENAME VARIABLES (oldname=newname).")
})
