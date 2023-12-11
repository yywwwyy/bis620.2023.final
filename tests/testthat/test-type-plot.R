test_that("type_plot() works", {
  data(adsl)
  data(biomark)
  data(adrsp)
  vdiffr::expect_doppelganger(
    "plot-type-1",
    gen_data() |> type_plot()
  )
})
