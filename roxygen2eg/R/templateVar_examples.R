# Notes:
# 1. before template, there must be explicit `@description` or `@details`
# 2. it seems that the template with `brew` syntax is evaluated then 
#   directly copied into the roxygen documentation chunk
# 3. one cannot add additional text after `@template some_template` as the 
#   parser takes the additional text as continuation of the template's name.
# 4. multiple templates can be used in one function's documentation, even the 
#   templates all take arguments which may have the same names.

#' A fixed parameter with additional text.
#' 
#' @description `x` is a common parameter for many functions, but it requires 
#'   additional text to be added after the common description.
#' 
#' @templateVar add_text Some specific comments of this parameter.
#' @template arg-x_with_text
#' 
#' @template arg-common_var
#' 
#' @template aut-huangs69
foo <- function(x, common_var1, common_var2) {
  return("foo!")
}

#' Parameters whose descriptions are of the same structure.
#' 
#' @description The function takes multiple parameters but all the descriptions 
#'   follow the same pattern.
#' 
#' @templateVar param_names c('xx', 'yy', 'zz')
#' @templateVar param_types c('numeric', 'character', 'logical')
#' @template arg-vectors_and_types
#' 
#' @template arg-common_var
#' 
#' @template aut-huangs69
bar <- function(xx, yy, zz, common_var1, common_var2) {
  return("bar!")
}

#' Multiple templates.
#' 
#' @description The function documentation uses more than one template that 
#'  takes an argument and the arguments are even of the same name.
#'   
#' @templateVar add_text Some specific comments of x in `baz`.
#' @template arg-x_with_text
#' 
#' @templateVar add_text Some specific comments of y in `baz`.
#' @template arg-y_with_text
#' 
#' @template aut-huangs69
baz <- function(x, y) {
  return("baz!")
}
