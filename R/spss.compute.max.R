#' Generate SPSS 'COMPUTE' syntax to compute the MAX() of two (sets of) variables.
#'
#' @param var1 the first argument for MAX().
#' @param var2 the second argument for MAX(). Used for the naming of the output variable(s).
#' @param output specifies if the function should output a file. Defaults to FALSE.
#' @param ext specifies the desired extension of the output file. Defaults to "txt".
#' @param append specifies the text that should be appended to the name(s) of the variable(s) in var2 to create the output variable(s).
#' @export
#' @examples
#' spss.compute.max(c("dob", "income"), c("dob_f", "income_f"), append = "total.")
#' spss.compute.max(c("dob", "income"), c("dob_f", "income_f"), output = TRUE, ext = "sps")

spss.compute.max <- function(var1, var2, output = FALSE, ext = "txt", append = "new.") {
  output_variables <- paste0(append, var2)
  max_format <- paste0("COMPUTE ", output_variables, " = ", "MAX(", var1, ",", var2, ").")
  max_complete <- paste(max_format, "EXECUTE.")
  writeLines(max_complete)

  if(output == TRUE) {
    file_name <- paste0("compute_max_syntax", ".", ext)
    writeLines(max_complete, con = file_name)
  }
}
