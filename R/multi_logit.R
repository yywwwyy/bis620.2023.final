#' @title Multinomial Logistic Regression
#'
#' The spectral signature is calculated by taking the modulus of the
#' Fourier coefficients of the signal.
#' @param x an object inherited from a data.frame with columns X, Y, Z, and time
#' sorted in time.
#' @param take_log should the log of the modulus be taken. (Default is `TRUE`)
#' @param inverse should the unnormalized inverse transform is computed.
#' (Default is `TRUE`)
#' @return a data frame with the modulus of the Fourier coefficients for the
#' X, Y, and Z channels.
#' @importFrom purrr map_dfc
#' @importFrom dplyr vars mutate_at select
#' @aliases spec_sig
#' @export
