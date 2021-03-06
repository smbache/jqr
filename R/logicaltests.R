#' Logical tests
#'
#' @export
#' @name logicaltests
#' @param .data input
#' @examples
#' # any
#' '[true, false]' %>% anyj
#' '[false, false]' %>% anyj
#' '[]' %>% anyj
#'
#' # all
#' '[true, false]' %>% allj
#' '[true, true]' %>% allj
#' '[]' %>% allj

#' @export
#' @rdname logicaltests
allj <- function(.data) {
  pipe_autoexec(toggle = TRUE)
  dots <- comb(tryargs(.data), structure('all', type = "all"))
  structure(list(data = getdata(.data), args = dots), class = "jqr")
}

#' @export
#' @rdname logicaltests
anyj <- function(.data) {
  pipe_autoexec(toggle = TRUE)
  dots <- comb(tryargs(.data), structure('any', type = "any"))
  structure(list(data = getdata(.data), args = dots), class = "jqr")
}
