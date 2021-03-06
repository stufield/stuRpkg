% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{objects}
\alias{objects}
\alias{test_data}
\alias{tree_data}
\alias{Ri_data}
\alias{InfectionByCounty}
\title{Package Objects}
\format{
\strong{test-data}: An object of class \code{tbl_df}
(inherits from \code{tbl}, \code{data.frame}) with 40 rows and 12 columns and
defined as follows:
\tabular{ll}{
Variable    \tab Definition \cr
pid         \tab \code{sprintf("\%02i", 1:40)}  \cr
Pop         \tab \code{rep(head(LETTERS, 10), 4)} \cr
Sample      \tab \code{factor(sample(c("small", "medium", "large"), 20))} \cr
TimePoint   \tab \code{factor(rep(c("baseline", "6 mths", "12 mths", "24 mths"), each = 10))} \cr
a           \tab \code{round(rnorm(40, mean = 25, sd = 3.5), 0)} \cr
b           \tab \code{sample(0:6, 40, replace = TRUE)} \cr
seq.1234.56 \tab \code{rnorm(40, mean = 25, sd = 3.5)} \cr
seq.6969.42 \tab \code{rnorm(40, mean = 25, sd = 1.5)} \cr
x           \tab \code{rnorm(40, mean = 25, sd = 3)} \cr
y           \tab \code{round(runif(40, 10, 20), 0)} \cr
z           \tab \code{round(rnrom(40, mean = 1, sd = 0.5), 3)} \cr
Response    \tab \verb{factor(sample(c("control", "disease"), 40, replace = TRUE)))} \cr
}

\strong{tree_data}: An object of class \code{tbl_df} (inherits from \code{tbl},
\code{data.frame}) with 20 rows and 10 columns.

\strong{Ri_data}: An object of class data.frame with 13 rows and 4 columns.

\strong{InfectionByCounty}: An object of class \code{tbl_df} (inherits
from \code{tbl}, \code{data.frame}) with 3071 rows and 11 columns.
}
\source{
\strong{test_data}: Stu Field

\strong{tree_data}: Sala et. al. \url{http}

\strong{Ri_data}: Sokal & Rohlf (Biometry; 3rd ed.), p. 210-214.

\strong{InfectionByCounty}: Dylan George
}
\usage{
test_data

tree_data

Ri_data

InfectionByCounty
}
\description{
The objects contained in the \pkg{stutils} package.
If known, the authorship of the object is attributed.
}
\section{Functions}{
\itemize{
\item \code{test_data}: A sample \code{tibble} data frame for running examples and checking
functions that act on data frames. See \code{?tibble}.

\item \code{tree_data}: Data set containing tree characteristic metric data,
that has been blinded and anonymized from its original source.
Used heavily in the \code{R} tutorial and for general data
frame usage (e.g. package testing). The format is \code{tibble} data

\item \code{Ri_data}: Coefficient Interclass Correlation Data Example
from Sokal & Rohlf (Biometry; 3rd ed.), pages 210-214.

\item \code{InfectionByCounty}: Infection data describing the infections
count data of an infectious disease
by geographic position. Includes the following variables:
\itemize{
\item CountyNo
\item CountyNo
\item CountyName
\item State
\item Fips
\item Site
\item Lat
\item Long
\item Population
\item Area
\item Density
\item Infected
}
}}

\examples{
test_data
summary(tree_data)
purrr::map_if(tree_data, is.numeric, mean)

Ri_data

InfectionByCounty

}
\references{
\code{tree_data}: originally from Sala et al., but heavily modified
to obscure its original source data values.

\code{InfectionByCounty}: originally from Dylan George and
used for an exercise data set in the 2010 EEID R tutorial.
}
\keyword{datasets}
