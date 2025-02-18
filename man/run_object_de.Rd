% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chevreul_app.R
\name{run_object_de}
\alias{run_object_de}
\title{Run Differential Expression}
\usage{
run_object_de(
  object,
  cluster1,
  cluster2,
  resolution = 0.2,
  diffex_scheme = "louvain",
  featureType = "gene",
  tests = c("t", "wilcox", "bimod")
)
}
\arguments{
\item{object}{SingleCellExperiment object}

\item{cluster1}{cluster 1}

\item{cluster2}{cluster 2}

\item{resolution}{resolution}

\item{diffex_scheme}{scheme for differential expression}

\item{featureType}{gene or transcript}

\item{tests}{t wicox or bimod}
}
\value{
a dataframe with differential expression information
}
\description{
Run Differential Expression
}
\examples{
chevreul_sce <- chevreuldata::human_gene_transcript_sce()
run_object_de(chevreul_sce,
    diffex_scheme = "louvain",
    cluster1 = 1, cluster2 = 2, tests = "t"
)

cells1 <- colnames(chevreul_sce)[chevreul_sce$batch == "Zhong"]
cells2 <- colnames(chevreul_sce)[chevreul_sce$batch == "Kuwahara"]

run_object_de(chevreul_sce,
    diffex_scheme = "custom",
    cluster1 = cells1, cluster2 = cells2, tests = "t"
)

}
