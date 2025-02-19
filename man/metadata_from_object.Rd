% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{metadata_from_object}
\alias{metadata_from_object}
\title{Get metadata from object}
\usage{
metadata_from_object(object)
}
\arguments{
\item{object}{a SingleCellExperiment object}
}
\value{
a tibble with metadata from a SingleCellExperiment object
}
\description{
Get metadata from the given object
}
\examples{
chevreul_sce <- chevreuldata::human_gene_transcript_sce()
metadata_from_object(chevreul_sce)

}
