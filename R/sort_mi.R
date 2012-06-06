# A function to sort path or cov that provide highest modification index (MI) decendingly.
# One may specify number of paths and/or cov in the output as n
# One may specify a cut-off value of MI as k

sort_mi <- function(fit, n=n, k=k) 
  # fit = fitted model, 
  # n = number of suggested paths or cov,
  # k = cut-off value of MI
{
  sort.mi <- inspect(fit, what = "mi")
  sort.mi <- sort.mi[order(-sort.mi$mi),]
  sort.mi <- data.frame(sort.mi)
  sort.mi <- sort.mi[which(sort.mi$mi > k),]
  sort.mi[1:n,]
}