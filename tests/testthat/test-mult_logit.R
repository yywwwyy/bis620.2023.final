test_that("mutt_logit(d) works", {
  data(adsl)
  data(biomark)
  data(adrsp)
  d = gen_data()
  expect_snapshot(mult_logit(d))
})
