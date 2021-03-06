% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sbp.R
\name{sbp.fromADBA}
\alias{sbp.fromADBA}
\title{Build SBP Matrix of "Anti-Principal Discriminant Balances"}
\usage{
sbp.fromADBA(x, group, ...)
}
\arguments{
\item{x}{A matrix with rows as samples (N) and columns as components (D).}

\item{group}{A character vector. Group or sub-group membership.
Argument passed to \code{propr::propd}.}

\item{...}{Other arguments passed to \code{propr::propd}.}
}
\value{
An SBP matrix.
}
\description{
This function builds an SBP of "discriminant balances"
 by clustering a matrix of the pair-wise total within-group
 variance, adjusted by the pair-wise total variance.
 The method is intended to make the smallest balances
 most discriminative.
}
\examples{
\dontrun{
library(balance)
data(iris)
x <- iris[1:100,1:4]
y <- iris[1:100,5]
sbp.fromADBA(x, y)
}

}
\author{
Thom Quinn
}
