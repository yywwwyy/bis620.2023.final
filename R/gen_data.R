#' @title Get the Data we want
#'
#' @description
#' The best response is the most favorable over the course of treatment and can be “Complete Response”,
#' “Partial Response”, “Stable Disease”, and “Progressive Disease",
#' with "Complete Response” being the best and “Progressive Disease” being the worst.
#' @return a data frame with all the X and Y we are interested in:
#' TYPE, ATRT, SEX, AGE, B_WEIGHT, B_HEIGHT, RACE, BEST.
#' @importFrom dplyr select filter group_by summarize first
#' @export
gen_data <- function(){
  id_m <- biomark |>
    select(c('SUBJID', 'BMMTNM1', 'BMMTR1', 'BMMTNM2', 'BMMTR2', 'BMMTNM3', 'BMMTR3', 'BMMTNM15', 'BMMTR15')) |>
    filter(BMMTR1 == 'Mutant' | BMMTR2 == 'Mutant' | BMMTR3 == 'Mutant' | BMMTR15 == 'Mutant')

  id_m['TYPE'] = 'Mutant'

  id_wt <- biomark |>
    select(c('SUBJID', 'BMMTNM1', 'BMMTR1', 'BMMTNM2', 'BMMTR2', 'BMMTNM3', 'BMMTR3', 'BMMTNM15', 'BMMTR15')) |>
    filter(BMMTR1 != 'Mutant' & BMMTR2 != 'Mutant' & BMMTR3 != 'Mutant' & BMMTR15 != 'Mutant')
  #id_wt

  id_wt$TYPE = ''

  for (row in 1:nrow(id_wt)) {
    cr_val = 0
    if (id_wt[row, 'BMMTR1'] == 'Wild-type') {
      cr_val = cr_val + 1
    }
    if (id_wt[row, 'BMMTR2'] == 'Wild-type') {
      cr_val = cr_val + 1
    }
    if (id_wt[row, 'BMMTR3'] == 'Wild-type') {
      cr_val = cr_val + 1
    }
    if (id_wt[row, 'BMMTR15'] == 'Wild-type') {
      cr_val = cr_val + 1
    }
    #print(cr_val)
    if (cr_val > 2) {
      id_wt[row, 'TYPE'] = 'Wild-type'
    }
  }

  id_wt[id_wt$TYPE == '', ]$TYPE = 'Unknown'
  #id_wt
  id_total <- rbind(id_m, id_wt)

  adrsp_arm <- merge(adrsp, adsl, by = 'SUBJID')
  best_order = c("Complete response", "Partial response", "Stable disease", "Progressive disease")

  adrsp_arm_1 = adrsp_arm |>
    group_by(SUBJID) |>
    summarize(BEST = first(sort(factor(RSRESP, levels = best_order), descending = TRUE)))

  adrsp_adsl <- merge(adrsp_arm_1, adsl, by = 'SUBJID')

  df <- merge(id_total, adrsp_adsl) |>
    select(c('TYPE', 'ATRT', 'SEX', 'AGE', 'B_WEIGHT', 'B_HEIGHT', 'RACE', 'BEST')) |>
    filter(BEST != 'NA')

  return(df)
}
