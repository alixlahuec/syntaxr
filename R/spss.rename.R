#' Generate SPSS 'RENAME' syntax to rename a (set of) variables into another.
#'
#' @param values the variable(s) to be renamed.
#' @param rename the name(s) to use for renaming.
#' @param file specifies if the function should output a file. Defaults to FALSE.
#' @param ext specifies the desired extension of the output file. Defaults to "txt".
#' @export
#' @examples
#' spss.rename(c("oldname1", "oldname2", "oldname3"), c("new1", "new2", "new3"))
#' spss.rename(c("oldname1", "oldname2"), c("new1", "new2"), output = TRUE, ext = "sps")

spss.rename <- function(values, rename, file = FALSE, ext = "txt") {
  rename_format <- paste0("(", values, "=", rename, ")")
  rename_command <- paste("RENAME VARIABLES ", rename_format, ".")
  writeLines(rename_command)

  if(file == TRUE) {
    file_name <- paste0("rename_syntax", ".", ext)
    writeLines(rename_command, con = file_name)
  }
}
