% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/integrate.R
\name{object_reduce_dimensions}
\alias{object_reduce_dimensions}
\title{Dimensional Reduction}
\usage{
object_reduce_dimensions(object, experiment = "gene", ...)
}
\arguments{
\item{object}{A SingleCellExperiment object}

\item{experiment}{Experiment of interest to be processed}

\item{...}{Extra parameters passed to object_reduce_dimensions}
}
\value{
a SingleCellExperiment object with embeddings
}
\description{
Run PCA, TSNE and UMAP on a singlecell objects
perplexity should not be bigger than 3 * perplexity < nrow(X) - 1, see details for interpretation
}
\examples{
chevreul_sce <- chevreuldata::human_gene_transcript_sce()
object_reduce_dimensions(chevreul_sce)
}
