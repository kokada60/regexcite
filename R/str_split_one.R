#'Split string
#'
#' @param string A character vector with element.
#' @param pattern What to split on.
#' @param n how many elements returned?
#' @return A character vector one-dimensional.
#' @export
#'
#' @examples
#' x <- "alpha,bravo,gamma,delta"
#' str_split_one(x, pattern=",")
str_split_one <- function(string, pattern, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = pattern, n = n)[[1]]
  } else {
    character()
  }
}
