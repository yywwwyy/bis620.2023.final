test_that("num_plot() works", {
  data(adsl)
  data(biomark)
  data(adrsp)
  vdiffr::expect_doppelganger(
    "plot-num-1",
    gen_data() |> num_plot('AGE')
  )
})
