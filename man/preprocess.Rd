% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocess.R
\name{preprocess}
\alias{preprocess}
\title{Preprocess Multi-trait Summary Statistics}
\usage{
preprocess(sumstats, maf.thr = 0.05)
}
\arguments{
\item{sumstats}{A list of K containing summary statistics for K traits.
Each element is a data frame that contains at least 6 columns：\code{rsid}, \code{A1} (effect allele), \code{A2}, \code{N} (sample size), \code{z} (z-statistic), \code{pval}.
Three optional columns can be provided: \code{chr} (chromosome number), \code{bp} (base pair; physical position), \code{freqA1} (allele frequency of A1);
if provided, SNP filtering will be applied: (1) remove MHC region (26-34Mb of chromosome 6) (2) remove variants with MAF < \code{maf.thr} (see below for \code{maf.thr}).}

\item{maf.thr}{MAF threshold for quality control. SNPs with MAF < \code{maf.thr} are removed. Default 0.05, constrained between 0 and 0.5. Only effective when \code{freqA1} is present in \code{sumstats}.}
}
\value{
A list that contains

\item{sumstats.all}{A data.frame containing the summary statistics of all individual traits.}
\item{traitvec}{A vector containing the trait names.}
}
\description{
Preprocesses summary statistics for HIPO analysis. Performs SNP filtering and allele merge.
}

