context("Output of spss.format.max")

test_that("spss.format.max returns proper output given proper input", {
  expect_equal(spss.format.max("score1", "score2"), "MAX(score1,score2)")
})
