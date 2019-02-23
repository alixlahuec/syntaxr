#' Generate SPSS 'RENAME' syntax to rename a (set of) variables into another.
#'
#' @param values the variable(s) to be renamed.
#' @param rename the name(s) to use for renaming.
#' @param output specifies if the function should output a file. Defaults to FALSE.
#' @param ext specifies the desired extension of the output file. Defaults to "txt".
#' @export
#' @examples
#' spss.rename(var1, name1)
#' spss.rename(var2, name2, output = TRUE, ext = "sps")

spss.rename <- function(values, rename, output = FALSE, ext = "txt") {
  rename_format <- paste0("(", values, "=", rename, ")")
  rename_command <- paste("RENAME VARIABLES ", rename_format, ".")
  writeLines(rename_command)

  if(output == TRUE) {
    file_name <- paste0("rename_syntax", ".", ext)
    writeLines(rename_command, con = file_name)
  }
}
