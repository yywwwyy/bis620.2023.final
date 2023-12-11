test_that("gen_data() works", {
  data(adsl)
  data(biomark)
  data(adrsp)
  expect_snapshot(gen_data())
})
