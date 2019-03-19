#' Generate SPSS 'RTRIM' syntax to apply RTRIM() to a string variable.
#'
#' @param str the string argument for RTRIM().
#' @export
#' @examples
#' spss.rtrim("variable_to_be_trimmed")

spss.rtrim <- function(str){
  rtrim.string <- paste0("RTRIM(", str, ")")
  return(rtrim.string)
}
