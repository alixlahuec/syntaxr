context("Output of spss.compute.concat")

test_that("spss.compute.concat returns proper output given proper input", {
  expect_equal(spss.compute.concat("feedback", "feedback_f", "enfr.feedback"), "COMPUTE enfr.feedback = concat(feedback,feedback_f).")
})
