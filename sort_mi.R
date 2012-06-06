sortMi <- function(fit, n) # fit = fitted model, n = number of suggested paths or cov
{
  s.mi <- inspect(fit, what = "mi")
  sort.mi <- s.mi[order(-s.mi$mi),]
  sort.mi[1:n,]
}
#test sortMi function
sort_mi(fit.TR, 5)