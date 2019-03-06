#' Generate SPSS 'STRING' syntax and 'COMPUTE' syntax to compute the CONCAT() of two (sets of) variables.
#'
#' @param str1 the first argument for CONCAT(). Used for the naming of the output variable(s).
#' @param str2 the second argument for CONCAT().
#' @param file specifies if the function should output a file. Defaults to FALSE.
#' @param ext specifies the desired extension of the output file. Defaults to "txt".
#' @param append specifies the text that should be appended to the name(s) of the variable(s) in str1 to create the output variable(s).
#' @export
#' @examples
#' spss.concat.new(c("dob", "income"), c("dob_f", "income_f"), append = "total.")
#' spss.concat.new(c("dob", "income"), c("dob_f", "income_f"), output = TRUE, ext = "sps")

spss.concat.new <- function(str1, str2, file = FALSE, ext = "txt", append = "enfr."){
  names <- paste0(append,str1)
  string.syntax <- names %>% spss.string(.)
  compute.syntax <- spss.compute.concat (str1, str2, names)
  output <- paste(string.syntax, compute.syntax, sep = "\n")
  
  writeLines(string.syntax)
  writeLines(compute.syntax

  if (file == TRUE) {
    paste0("concat_new_syntax", ".", ext) %>%
      writeLines(output, con = .)
  }
}
