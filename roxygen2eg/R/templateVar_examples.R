# Notes:
# 1. before template, there must be explicit `@description` or `@details`
# 2. it seems that the template with `brew` syntax is evaluated then 
#   directly copied into the roxygen documentation chunk
# 3. one cannot add additional text after `@template some_template` as the 
#   parser takes the additional text as continuation of the template's name.

#' A fixed parameter with additional text.
#' 
#' @description `x` is a common parameter for many functions, but it requires 
#'   additional text to be added after the common description.
#' 
#' @templateVar add_text Some specific comments of this parameter.
#' @template arg-x_with_text
#' 
#' @param another_var Some other variable.
foo <- function(x, another_var) {
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
bar <- function(xx, yy, zz) {
  return("bar!")
}

#' Multiple templates.
#' 
#' @description The function documentation uses more than one template.
#'   
#' @templateVar add_text Some specific comments of this parameter.
#' @template arg-x_with_text
#' 
#' @templateVar param_names c('xx', 'yy')
#' @templateVar param_types c('numeric', 'character')
#' @template arg-vectors_and_types
baz <- function(x, xx, yy) {
  return("baz!")
}
