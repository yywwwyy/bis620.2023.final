#' @title Make a plot of different numerical factors with respect to the response
#'
#' @description
#' We try to see the distribution of different numerical factors among various type of responses
#' @param dat the dataset we use
#' @param feature the numerical feature we use, including: 'AGE', 'B_WEIGHT', 'B_HEIGHT'
#' @return a plot with the X we select and Y being BEST.
#' @importFrom dplyr summarise group_by n .data
#' @importFrom ggplot2 geom_line geom_point theme_minimal labs aes theme
#' @export
num_plot <- function(dat, feature){ # can use AGE, B_WEIGHT, B_HEIGHT
  df_summary <- dat |>
    group_by(.data[[feature]], BEST) |>
    summarise(count = n(), .groups = 'drop')

  ggplot(df_summary, aes(x = .data[[feature]], y = count, group = BEST, color = BEST)) +
    geom_line(na.rm = TRUE) +
    geom_point(na.rm = TRUE) +
    theme_minimal() +
    labs(x = feature, y = "Count", color = "Response Category") +
    theme(legend.position = "bottom")
}
