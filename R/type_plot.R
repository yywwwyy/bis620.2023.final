#' @title Make a plot of different types with respect to the response
#'
#' @description
#' We try to see the distribution of different types among various of responses
#' @param dat the dataset we use
#' @return a plot with the X being TYPE and Y being BEST.
#' @importFrom dplyr summarise summarize group_by
#' @importFrom ggplot2 geom_col theme_bw aes labs
#' @export
type_plot <- function(dat){
  id_counts = dat |>
    group_by(BEST) |>
    summarize(
      Mutant = sum(TYPE == "Mutant", na.rm = T),
      Wild_type = sum(TYPE == "Wild-type", na.rm = T),
      Unknown = sum(TYPE == "Unknown", na.rm = T)
    )

  dth_counts_tt <-
    id_counts |> pivot_longer(c(Mutant, Wild_type, Unknown))

  ggplot(dth_counts_tt, aes(x = name, y = value, group = BEST, fill = BEST)) +
    geom_col() +
    theme_bw() +
    labs(title = "Best response number across different types",
         x = "Patient types",
         y = "Best response")
}
