

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Add two numbers
#'
#' @param x,y numbers to add
#'
#' @useDynLib simplefortran add_
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
add_Fortran <- function(x, y) {
  .Fortran(add_, x, y, numeric(1))[[3]]
}



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#' Multiply two numbers
#'
#' @param x,y numbers to multiply
#'
#' @useDynLib simplefortran mul_
#' @export
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
mul_Fortran <- function(x, y) {
  .C(mul_, x, y, numeric(1))[[3]]
}
