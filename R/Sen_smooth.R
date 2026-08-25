#' Thiel-Sen Smooth
#'
#' Use mblm to calculate the Thiel-Sen smooth, which is the median of all slopes between all pairs of points with different x-values. See the documentation for mblm::mblm(repeated = FALSE) for full details. Use this as the method within a function, e.g. ggplot2::geom_smooth(method = "sen").
#' @param ... passes formula and dataframe to function
#' @param weights optional vector of weights
#' @export

sen <- function(..., weights = NULL) {
  mblm::mblm(...,repeated=FALSE)
}

#' Siegel Smooth
#'
#' Use mblm to calculate the Siegel smooth, which is the nested median of all slopes. Generally recommended for 14 or more data points. See the documentation for mblm::mblm(repeated = TRUE) for full details. Use this as the method within a function, e.g. ggplot2::geom_smooth(method = "sen").
#' @param ... passes formula and dataframe to function
#' @param weights optional vector of weights
#' @export

siegel <- function(..., weights = NULL) {
  mblm::mblm(...,repeated=TRUE)
}
