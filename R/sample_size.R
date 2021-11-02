#'Sample size calculator based on:
#'https://www.qualtrics.com/uk/experience-management/research/determine-sample-size/?rid=ip&prevsite=en&newsite=uk&geo=ES&geomatch=uk
#'also based on a simple calculation by survey monkey that assumes a s.e of .25
#'https://www.surveymonkey.com/mp/sample-size-calculator/

  #'@param N population
  #'@param margin_error (diff between the mean number of sample and mean number of population)
  #'has to be expressed in decimals (0.05, 0.02)
  #'@param confidence interval of how confident you want to be that the actual mean falls within the error margin (expressed
  #'in z-score 90% = 1.645, 95% 1.96, 99% 2.576)
  #'@example sample_size(N = 500,
  #'margin_error = .05,
#'confidence_interval = 1.9599
#')






sample_size <- function(N,
                       margin_error,
                       confidence_interval){


  noTop = ((confidence_interval * confidence_interval) *.25)
  noBottom = (margin_error * margin_error)

  no = noTop/noBottom

  n = ceiling(no/(1+no/N))


  return(n)

}


