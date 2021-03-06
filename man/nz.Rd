% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{nz}
\alias{nz}
\title{New Zealand coastline.}
\format{An \code{sf} object.}
\source{
\url{https://data.linz.govt.nz/layer/51153-nz-coastlines-and-islands-polygons-topo-150k/}
}
\usage{
nz
}
\description{
New Zealand coastline, excluding the Chathams, that is simplified for ggplot.
}
\examples{
library(sf)
nz

ggplot_sf(nz)

ggplot_sf(dplyr::slice(nz, 2))

ggplot_sf(dplyr::slice(nz, 1, 3))
}
\keyword{datasets}
