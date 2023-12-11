
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bis620.2023.final

<!-- badges: start -->

[![R-CMD-check](https://github.com/kaneplusplus/bis620.2023/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/kaneplusplus/bis620.2023/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Installation

You can install the development version of bis620.2023 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("yywwwyy/bis620.2023.final")
#> Skipping install of 'bis620.2023.final' from a github remote, the SHA1 (0344b85c) has not changed since last install.
#>   Use `force = TRUE` to force installation
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

You can also use the code below to build the vignette to read.

``` r
library(devtools)
#> Loading required package: usethis
build_vignettes()
#> ℹ Installing bis620.2023.final in temporary library
#> ℹ Building vignettes for bis620.2023.final
#> --- re-building 'abstract-vignette.Rmd' using rmarkdown
#> 
#> 
#> processing file: abstract-vignette.Rmd
#>   |                                                            |                                                    |   0%  |                                                            |....                                                |   7%                    |                                                            |.......                                             |  14% [unnamed-chunk-1]  |                                                            |...........                                         |  21%                    |                                                            |...............                                     |  29% [setup]          trying URL 'https://cloud.r-project.org/bin/windows/contrib/4.3/rlang_1.1.2.zip'
#> Content type 'application/zip' length 1572536 bytes (1.5 MB)
#> ==================================================
#> downloaded 1.5 MB
#> 
#> * installing *source* package 'bis620.2023.final' ...
#> ** using staged installation
#> ** R
#> ** data
#> *** moving datasets to lazyload DB
#> ** byte-compile and prepare package for lazy loading
#> ** help
#> *** installing help indices
#> *** copying figures
#> ** building package indices
#> ** installing vignettes
#> ** testing if installed package can be loaded from temporary location
#> ** testing if installed package can be loaded from final location
#> ** testing if installed package keeps a record of temporary installation path
#> * DONE (bis620.2023.final)
#>   |                                                            |...................                                 |  36%                    |                                                            |......................                              |  43% [unnamed-chunk-2]  |                                                            |..........................                          |  50% [unnamed-chunk-3]  |                                                            |..............................                      |  57%                    |                                                            |.................................                   |  64% [unnamed-chunk-4]  |                                                            |.....................................               |  71%                    |                                                            |.........................................           |  79% [unnamed-chunk-5]  |                                                            |.............................................       |  86%                    |                                                            |................................................    |  93% [unnamed-chunk-6]  |                                                            |....................................................| 100%                                                                                                                              
#> output file: abstract-vignette.knit.md
#> 
#> "C:/Program Files/RStudio/resources/app/bin/quarto/bin/tools/pandoc" +RTS -K512m -RTS abstract-vignette.knit.md --to html4 --from markdown+autolink_bare_uris+tex_math_single_backslash --output pandoca144714d1546.html --lua-filter "C:\Users\12862\AppData\Local\R\win-library\4.3\rmarkdown\rmarkdown\lua\pagebreak.lua" --lua-filter "C:\Users\12862\AppData\Local\R\win-library\4.3\rmarkdown\rmarkdown\lua\latex-div.lua" --embed-resources --standalone --section-divs --template "C:\Users\12862\AppData\Local\R\win-library\4.3\rmarkdown\rmd\h\default.html" --highlight-style pygments --css "C:/Users/12862/AppData/Local/R/win-library/4.3/rmarkdown/rmarkdown/templates/html_vignette/resources/vignette.css" --mathjax --variable "mathjax-url=https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" --include-in-header "C:\Users\12862\AppData\Local\Temp\RtmpUB7qwO\rmarkdown-stra14479bd1546.html" 
#> 
#> Output created: abstract-vignette.html
#> --- finished re-building 'abstract-vignette.Rmd'
#> 
#> ℹ Copying vignettes
#> ℹ Moving 'abstract-vignette.html' and 'abstract-vignette.R' to 'doc/'
#> ℹ Copying 'abstract-vignette.Rmd' to 'doc/'
#> ℹ Building vignette index
```
