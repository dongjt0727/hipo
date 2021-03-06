% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hipoeigen.R
\name{hipoeigen}
\alias{hipoeigen}
\title{HIPO eigendecomposition}
\usage{
hipoeigen(sumstats.all, traitvec, coherit.mat, ldscint.mat, HIPOD.num = 2,
  truncate = NULL)
}
\arguments{
\item{sumstats.all}{Summary statitics of all individual traits, first output of \code{preprocess()}.}

\item{traitvec}{Vector of trait names, second output of \code{preprocess()}.}

\item{coherit.mat}{Genetic covariance matrix.}

\item{ldscint.mat}{LD score regression intercept matrix.}

\item{HIPOD.num}{Number of HIPO components to calculate z stats and p-value for.}

\item{truncate}{Use only for high-dimensional phenotypes. If \code{NULL}, use the full \code{coherit.mat} and \code{ldscint.mat}; if a decimal, truncate the eigenvectors of ldscint.mat with eigenvalues < truncate*(max eigenvalue of ldscint.mat). Recommended 0.05.}
}
\value{
A list that contains

\item{sumstats.all}{A data.frame containing the summary statistics of all individual traits.}
\item{coherit.mat}{Genetic covariance matrix.}
\item{ldscint.mat}{Matrix of LD score regression intercepts.}
\item{eigenvalue}{Eigenvalues from HIPO eigendecomposition. Proportional to the average non-centrality parameter.}
\item{HIPOD.mat}{A matrix of which the columns are the HIPO components.}
}
\description{
Performs HIPO eigendecomposition and calculates the z statistics and p-values of HIPO components.
}

