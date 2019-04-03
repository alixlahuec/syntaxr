#' Generate SPSS 'STRING' syntax and 'COMPUTE' syntax to compute the CONCAT() of two (sets of) variables.
#'
#' @param str1 the first argument for CONCAT(). Used for the naming of the output variable(s).
#' @param str2 the second argument for CONCAT().
#' @param file specifies if the function should output a file. Defaults to FALSE.
#' @param ext specifies the desired extension of the output file. Defaults to "txt".
#' @param append specifies the text that should be appended to the name(s) of the variable(s) in str1 to create the output variable(s). Defaults to an empty string.
#' @param name specifies the name of the new String variable to be created. Defaults to an empty string ; if left unspecified, the function will use the append parameter.
#' @importFrom magrittr "%>%"
#' @export
#' @examples
#' spss.concat.new(c("dob", "income"), c("dob_f", "income_f"), append = "total.")
#' spss.concat.new(c("dob", "income"), c("dob_f", "income_f"), file = TRUE, ext = "sps")

spss.concat.new <- function(str1, str2, file = FALSE, ext = "txt", append = "", name = "", ...){
  if (name != ""){
    string.name <- name
  } else{
    string.name <- paste0(append, str1)
  }
  string.syntax <- string.name %>% spss.string(., ...)
  compute.syntax <- spss.compute.concat (str1, str2, string.name)
  concat.new.syntax <- paste(string.syntax, compute.syntax, sep = "\n")

  return(concat.new.syntax)

  if (file == TRUE) {
    paste0("concat_new_syntax", ".", ext) %>%
      writeLines(concat.new.syntax, con = .)
  }
}
