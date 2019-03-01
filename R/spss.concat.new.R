#' Generate SPSS 'STRING' syntax and 'COMPUTE' syntax to compute the CONCAT() of two (sets of) variables.
#'
#' @param var1 the first argument for MAX().
#' @param var2 the second argument for MAX(). Used for the naming of the output variable(s).
#' @param file specifies if the function should output a file. Defaults to FALSE.
#' @param ext specifies the desired extension of the output file. Defaults to "txt".
#' @param append specifies the text that should be appended to the name(s) of the variable(s) in var2 to create the output variable(s).
#' @export
#' @examples
#' spss.compute.max(c("dob", "income"), c("dob_f", "income_f"), append = "total.")
#' spss.compute.max(c("dob", "income"), c("dob_f", "income_f"), output = TRUE, ext = "sps")

spss.concat.new <- function(str1, str2, append = "enfr."){
  names <- paste0(append,str1)
  string.syntax <- names %>% spss.string(.)
  compute.syntax <- spss.compute.concat (str1, str2, names)
  concat.new.syntax <- paste(string.syntax, compute.syntax)
  return(concat.new.syntax)
}
