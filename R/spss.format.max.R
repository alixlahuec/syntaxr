#' Generate SPSS 'MAX()' syntax for two (sets of) variables.
#'
#' @param var1 the first argument for MAX().
#' @param var2 the second argument for MAX().
#' @export
#' @examples
#' spss.format.max(c("dob", "income"), c("dob_f", "income_f"))
#' spss.format.max("income", "income_f")

spss.format.max <- function(var1, var2){
  return(paste0("MAX(", var1, ",", var2, ")"))
}
