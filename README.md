
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bis620.2023.final

<!-- badges: start -->

[![R-CMD-check](https://github.com/yywwwyy/bis620.2023.final/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/yywwwyy/bis620.2023.final/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/yywwwyy/bis620.2023.final/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/yywwwyy/bis620.2023.final/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

## Installation

You can install the development version of bis620.2023.final from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
# devtools::install_github("yywwwyy/bis620.2023.final")
```

## Example

This is a basic example which shows you how to get the cleaned data set
and do plot.

``` r
library(bis620.2023.final)
head(gen_data())
#>      TYPE                 ATRT    SEX AGE B_WEIGHT B_HEIGHT               RACE
#> 1 Unknown         FOLFOX alone   Male  64     64.2      167 White or Caucasian
#> 2  Mutant Panitumumab + FOLFOX   Male  65     67.0      165 White or Caucasian
#> 3  Mutant         FOLFOX alone   Male  60     75.0      175 White or Caucasian
#> 4  Mutant         FOLFOX alone Female  64     52.0      160 White or Caucasian
#> 5 Unknown         FOLFOX alone   Male  74     66.0      171 White or Caucasian
#> 6  Mutant Panitumumab + FOLFOX Female  52     53.0      160 Hispanic or Latino
#>                  BEST
#> 1      Stable disease
#> 2 Progressive disease
#> 3      Stable disease
#> 4    Partial response
#> 5 Progressive disease
#> 6    Partial response
type_plot(gen_data())
```

<img src="man/figures/README-example-1.png" width="100%" /> \## Abstract
of our research

Our research aims to employ logistic regression analysis to examine the
predictive value of mutation type, treatment type, sex, age, weight,
height, and race on the response to treatment in mCRC. The significance
of these predictors will be assessed through p-values, providing
insights into their relative importance and guiding future personalized
treatment strategies.

## Vignette

You can read the statistical report from the vignette of this package.
The vignette is under the name of abstract-vignette.html in the main
folder. You need to open it in a browser.
