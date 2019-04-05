#' Generate SPSS 'COMPUTE' syntax to compute the MAX() of two (sets of) variables.
#'
#' @param var1 the first argument for MAX(). Used for the naming of the output variable(s).
#' @param var2 the second argument for MAX().
#' @param append specifies the text that should be appended to the name(s) of the variable(s) in var1 to create the output variable(s).
#' @param ... any additional arguments that can be passed to functions spss.format.max and spss.format.compute
#' @importFrom magrittr "%>%"
#' @export
#' @examples
#' spss.compute.max(c("dob", "income"), c("dob_f", "income_f"), append = "total.")
#' spss.compute.max(c("dob", "income"), c("dob_f", "income_f"), output = TRUE, ext = "sps")

spss.compute.max <- function(var1, var2, append = "new.", ...) {
  created <- paste0(append, var1)
  output <- spss.format.max(var1, var2) %>%
              spss.format.compute(created, .)

  return(output)
}
