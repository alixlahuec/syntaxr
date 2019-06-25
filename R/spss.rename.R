#' Generate SPSS 'RENAME' syntax to rename a (set of) variables into another.
#'
#' @param values the variable(s) to be renamed.
#' @param rename the name(s) to use for renaming.
#' @export
#' @examples
#' spss.rename(c("oldname1", "oldname2", "oldname3"), c("new1", "new2", "new3"))
#' spss.rename(c("oldname1", "oldname2"), c("new1", "new2"))

spss.rename <- function(values, rename) {
  rename_format <- paste0("(", values, "=", rename, ")")
  rename_command <- paste0("RENAME VARIABLES ", rename_format, ".")
  return(rename_command)
}
