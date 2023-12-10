## code to prepare `DATASET` dataset goes here

accel = readRDS("accel.rds")
usethis::use_data(accel, overwrite = TRUE)


trial_path = file.path(".")
trial_files = list.files(trial_path, pattern = "*_pds2019.sas7bdat")

dl = purrr::map(file.path(trial_path, trial_files), ~ haven::read_sas(.x))
names(dl) = gsub("*_pds2019.sas7bdat", "", trial_files)

adae = dl$adae
adlb = dl$adlb
adls = dl$adls
adpm = dl$adpm
adrsp = dl$adrsp
adsl = dl$adsl
biomark = dl$biomark

usethis::use_data(adae, overwrite = TRUE)
usethis::use_data(adlb, overwrite = TRUE)
usethis::use_data(adls, overwrite = TRUE)
usethis::use_data(adpm, overwrite = TRUE)
usethis::use_data(adrsp, overwrite = TRUE)
usethis::use_data(adsl, overwrite = TRUE)
usethis::use_data(biomark, overwrite = TRUE)


