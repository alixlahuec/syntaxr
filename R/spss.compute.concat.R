#' Generate SPSS 'COMPUTE' syntax to compute the CONCAT() of two (sets of) variables.
#'
#' @param str1 the first argument for CONCAT().
#' @param str2 the second argument for CONCAT().
#' @param names the name(s) of the variable(s) to be created.
#' @param file specifies if the function should output a file. Defaults to FALSE.
#' @param ext specifies the desired extension of the output file. Defaults to "txt".
#' @export
#' @examples
#' spss.compute.concat("feedback", "feedback_f", "enfr.feedback")
#' spss.compute.concat("feedback", "feedback_f", "enfr.feedback", file = TRUE, ext = "sps")

spss.compute.concat <- function(str1, str2, names, file = FALSE, ext = "txt"){
   compute.syntax <- spss.format.concat (str1, str2) %>% spss.format.compute(names, .)

  if (file == TRUE) {
    paste0("compute_concat_syntax", ".", ext) %>%
      writeLines(compute.syntax, con = .)
  }

  return (compute.syntax)
}
