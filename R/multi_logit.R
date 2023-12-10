#' @title Multinomial Logistic Regression
#'
#' @description
#' Multinomial Logistic Regression for analysis.
#' @param d cleaned table for analysis
#' @return a data frame with the
#' @importFrom purrr
#' @importFrom dplyr
#' @importFrom nnet multinom
#' @export
mult_logit = function(d){

  model <- multinom(BEST ~ ATRT + TYPE + SEX + AGE + B_WEIGHT + B_HEIGHT + RACE, data = d)

  tidy(model, conf.int = TRUE, exponentiate = TRUE) |>
    kable() |>
    kable_styling("basic", full_width = FALSE)
}
