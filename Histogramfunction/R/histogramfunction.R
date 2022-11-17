#' @title Histogram Distribution Graph
#'
#' @description Graph the distribution of a column/variable of a dataset with histogram by dividing the x-axis into bins and counting the number of observations in each bin.
#'
#' @param data - The dataset you are interested in exploring
#' @param var_x - A numerical variable (or a column) from the dataset that you are interested in visualizing the distribution.
#' @return Returns a histogram with the var_x(variable-of-interest) on the x-axis, and count on the y-axis.
#'
#' @examples
#' quick_histogram_function(data=mtcars, mpg)
#'      # Plots distribution of mpg(miles/gallon) of mtcars dataset.
#' quick_histogram_function(data=gapminder, lifeExp)
#'      # Plots distribution of life expectancy of gapminder dataset.
#'
#' @export
quick_histogram_function <- function(data, var_x) {
  #Ensure x will be a column from the dataset
  if (!(deparse(substitute(var_x)) %in% colnames(data))){
    stop("var_x not exist as a column in the data.")
  }
  #Ensure x is a numerical variable, not a categorical variable.
  if (!is.numeric(data[[deparse(substitute(var_x))]])) {
    stop("var_x should be a numerical variable.")
  }
  #set the default number of bins to 20.
  #y-axis of the graph should be named "count"
  graph<-ggplot2::ggplot(data, ggplot2::aes({{var_x}})) +
    ggplot2::geom_histogram(bins=20) +
    ggplot2::labs(y = "count") +
    ggplot2::theme_bw()

  return(graph)
}
