#' Generate SPSS 'concat()' syntax for two (sets of) variables.
#'
#' @param var1 the first argument for concat().
#' @param var2 the second argument for concat().
#' @export
#' @examples
#' spss.format.concat(c("dob", "income"), c("dob_f", "income_f"))
#' spss.format.concat("income", "income_f")

spss.format.concat <- function(var1, var2){
  paste0("concat(", var1, ",", var2, ")")
}
