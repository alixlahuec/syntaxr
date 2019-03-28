context("Output of spss.concat.new")

test_that("spss.concat.new returns proper output given proper input", {
  expect_equal(spss.concat.new("comments", "comments_f", name = "merged_comments"), paste("STRING merged_comments(A15).", "COMPUTE merged_comments = concat(comments,comments_f).", sep = "\n"))
})
test_that("spss.concat.new passes the string.format argument correctly", {
  expect_equal(spss.concat.new("long_text", "long_text_f", name = "merged_long_text", string.format = "A20"), paste("STRING merged_long_text(A20).", "COMPUTE merged_long_text = concat(long_text,long_text_f).", sep = "\n"))
})
