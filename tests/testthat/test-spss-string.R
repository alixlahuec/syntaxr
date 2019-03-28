context("test-spss-string")

test_that("spss.string returns proper output with default settings", {
  expect_equal(spss.string("new_string"), "STRING new_string(A15).")
})
test_that("spss.string returns retrieves specified string.format parameter", {
  expect_equal(spss.string("new_string", string.format = "A35"), "STRING new_string(A35).")
})
