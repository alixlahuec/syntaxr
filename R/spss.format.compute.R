#' Generate SPSS 'COMPUTE' syntax to carry out an operation on two (sets of) variables.
#'
#' @param output specifies the name(s) of the output variable(s) of COMPUTE().
#' @param operation specifies the computational operation to be carried out.
#' @param var.format specifies an (optional) format for the variable to be created.
#' @export
#' @examples
#' spss.format.compute(new.var, "MAX(var1,var2)")
#' spss.format.compute(c("dob", "comments"), c("MAX(dob,dob_f)", "CONCAT(comments,comments_f)"))

spss.format.compute <- function(output, operation, var.format = ""){
  formatting <- character()
  if(var.format != ""){
    formatting <- paste0("(", var.format, ")")
  }
  paste("COMPUTE", output, formatting, "=", operation, ".")
}
