# mutt_logit(d) works

    Code
      mult_logit(d)
    Output
      # weights:  28 (18 variable)
      initial  value 1246.278631 
      iter  10 value 943.239141
      iter  20 value 919.625814
      final  value 919.619052 
      converged
      # A tibble: 18 x 8
         y.level         term  estimate std.error statistic p.value conf.low conf.high
         <chr>           <chr>    <dbl>     <dbl>     <dbl>   <dbl>    <dbl>     <dbl>
       1 Partial respon~ (Int~  3.03       0.992     3.05   0.00229   1.08      4.97  
       2 Partial respon~ ATRT~  0.198      0.330     0.601  0.548    -0.448     0.845 
       3 Partial respon~ TYPE~  0.377      0.781     0.483  0.629    -1.15      1.91  
       4 Partial respon~ TYPE~ -0.497      0.362    -1.37   0.171    -1.21      0.213 
       5 Partial respon~ SEXM~  0.426      0.337     1.27   0.206    -0.234     1.09  
       6 Partial respon~ AGE   -0.00904    0.0156   -0.580  0.562    -0.0396    0.0215
       7 Stable disease  (Int~  1.72       1.04      1.65   0.0991   -0.323     3.75  
       8 Stable disease  ATRT~ -0.105      0.344    -0.307  0.759    -0.779     0.568 
       9 Stable disease  TYPE~ -0.0276     0.800    -0.0345 0.972    -1.60      1.54  
      10 Stable disease  TYPE~ -1.04       0.374    -2.77   0.00553  -1.77     -0.305 
      11 Stable disease  SEXM~  0.265      0.351     0.755  0.450    -0.423     0.952 
      12 Stable disease  AGE    0.00909    0.0163    0.556  0.578    -0.0230    0.0411
      13 Progressive di~ (Int~  2.11       1.13      1.87   0.0619   -0.105     4.33  
      14 Progressive di~ ATRT~ -0.00810    0.383    -0.0212 0.983    -0.758     0.742 
      15 Progressive di~ TYPE~ -0.453      0.897    -0.505  0.614    -2.21      1.31  
      16 Progressive di~ TYPE~ -0.996      0.412    -2.41   0.0158   -1.80     -0.187 
      17 Progressive di~ SEXM~  0.0805     0.390     0.206  0.837    -0.684     0.845 
      18 Progressive di~ AGE   -0.0130     0.0180   -0.721  0.471    -0.0482    0.0223

