% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/histogramfunction.R
\name{quick_histogram_function}
\alias{quick_histogram_function}
\title{Histogram Distribution Graph}
\usage{
quick_histogram_function(data, var_x)
}
\arguments{
\item{data}{\itemize{
\item The dataset you are interested in exploring
}}

\item{var_x}{\itemize{
\item A numerical variable (or a column) from the dataset that you are interested in visualizing the distribution.
}}
}
\value{
Returns a histogram with the var_x(variable-of-interest) on the x-axis, and count on the y-axis.
}
\description{
Graph the distribution of a column/variable of a dataset with histogram by dividing the x-axis into bins and counting the number of observations in each bin.
}
\examples{
quick_histogram_function(data=mtcars, mpg)
     # Plots distribution of mpg(miles/gallon) of mtcars dataset.
quick_histogram_function(data=gapminder, lifeExp)
     # Plots distribution of life expectancy of gapminder dataset.

}
