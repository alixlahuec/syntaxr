#' Generate SPSS 'STRING' syntax to create a variable of type string.
#'
#' @param names the name(s) of the variable(s) to be created.
#' @param string.format specifies the formatting to use when creating the string variable. Defaults to "A15".
#' @export
#' @examples
#' spss.string("my.string")
#' spss.string("long.string", string.format = "A40")

spss.string <- function(names, string.format = "A15"){
  string.syntax <- paste0("STRING ", names, paste0("(", string.format, ")"), ".")
  return(string.syntax)
}
