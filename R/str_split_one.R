#'Split string
#'
#' @param x A character vector with element.
#' @param split What to split on.
#'
#' @return A character vector one-dimensional.
#' @export
#'
#' @examples
#' x <- "alpha,bravo,gamma,delta"
#' strsplit(x, split=",")
str_split_one <- function(string, pattern, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = pattern, n = n)[[1]]
  } else {
    character()
  }
}
