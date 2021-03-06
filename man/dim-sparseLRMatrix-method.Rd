% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/object.R
\name{dim,sparseLRMatrix-method}
\alias{dim,sparseLRMatrix-method}
\title{Check the dimension of a sparseLRMatrix}
\usage{
\S4method{dim}{sparseLRMatrix}(x)
}
\arguments{
\item{x}{A \linkS4class{sparseLRMatrix} object.}
}
\value{
Dimension of \code{x}.
}
\description{
Check the dimension of a sparseLRMatrix
}
\examples{

set.seed(528491)

n <- 50
m <- 40
k <- 3

A <- rsparsematrix(n, m, 0.1)

U <- Matrix(rnorm(n * k), nrow = n, ncol = k)
V <- Matrix(rnorm(m * k), nrow = m, ncol = k)

# construct the matrix, which represents A + U \%*\% t(V)
X <- sparseLRMatrix(sparse = A, U = U, V = V)

dim(X)

s <- svds(X, 5)  # efficient

}
