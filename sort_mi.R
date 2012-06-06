# A function to sort path or cov that provide highest modification index (MI) decendingly.
# One may specify number of paths and/or cov in the putput

sort_mi <- function(fit, n) # fit = fitted model, n = number of suggested paths or cov
{
  s.mi <- inspect(fit, what = "mi")
  sort.mi <- s.mi[order(-s.mi$mi),]
  sort.mi[1:n,]
}