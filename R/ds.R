#' Create Histogram Boxplot and summary
#' @export
#' @param x numeric variable
ds <- function(x) {
  par(mfrow=c(1,2))
  #Histogram
  hist(x)
  #Box plot
  boxplot(x)
  par(mfrow = c(1,1))
  # Numeric summary
  data.frame(min = min(x),
             median = median(x),
             mean = mean(x),
             max = max(x),
            sd = sd(x),
            range = max(x)-min(x))
}
