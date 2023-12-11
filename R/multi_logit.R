#' @title Multinomial Logistic Regression
#'
#' @description
#' Multinomial Logistic Regression for analysis.
#' @param d cleaned table for analysis
#' @return a data frame with the logit result
#' @importFrom broom tidy
#' @importFrom nnet multinom
#' @export
mult_logit = function(d){
  model <- multinom(BEST ~ ATRT+TYPE+SEX+AGE, data = d)

  return(broom::tidy(model, conf.int = TRUE))
}
