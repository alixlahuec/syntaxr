#' Generate SPSS 'COMPUTE' syntax to compute the CONCAT() of two (sets of) variables.
#'
#' @param str1 the first argument for CONCAT().
#' @param str2 the second argument for CONCAT().
#' @param names the name(s) of the variable(s) to be created.
#' @importFrom magrittr "%>%"
#' @export
#' @examples
#' spss.compute.concat("feedback", "feedback_f", "enfr.feedback")
#' spss.compute.concat("feedback", "feedback_f", "enfr.feedback")

spss.compute.concat <- function(str1, str2, names){
   compute.syntax <- spss.format.concat (str1, str2) %>%
      spss.format.compute(names, .)

   return (compute.syntax)
}
