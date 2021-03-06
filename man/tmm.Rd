% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/methods-tmm.R
\docType{methods}
\name{tmm}
\alias{tmm}
\alias{tmm,bcbioRNASeq-method}
\alias{tmm,DESeqDataSet-method}
\alias{tmm,matrix-method}
\title{Trimmed Mean of M-Values (TMM) Normalization}
\usage{
tmm(object)

\S4method{tmm}{bcbioRNASeq}(object)

\S4method{tmm}{DESeqDataSet}(object)

\S4method{tmm}{matrix}(object)
}
\arguments{
\item{object}{Object.}
}
\value{
\link{matrix}.
}
\description{
TMM normalization is recommended for RNA-seq data generally when the majority
of genes are not differentially expressed. We use this as a quality control
tool when plotting counts per gene.
}
\examples{
load(system.file(
    file.path("extdata", "bcb.rda"),
    package = "bcbioRNASeq"))

# bcbioRNASeq
tmm(bcb) \%>\% summary()

# DESeqDataSet
dds <- bcbio(bcb, "DESeqDataSet")
tmm(dds) \%>\% summary()

# matrix
counts <- counts(bcb)
tmm(counts) \%>\% summary()
}
\author{
Michael Steinbaugh
}
\keyword{internal}
