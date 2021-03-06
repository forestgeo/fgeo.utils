% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fgeo_elevation.R
\name{fgeo_elevation}
\alias{fgeo_elevation}
\title{Create elevation data.}
\usage{
fgeo_elevation(elev)
}
\arguments{
\item{elev}{One of these:
\itemize{
\item A dataframe containing elevation data, with columns \code{gx}, \code{gy}, and
\code{elev}, or \code{x}, \code{y}, and \code{elev} (e.g. \code{fgeo.x::elevation$col}).
\item A ForestGEO-like elevation list with elements \code{xdim} and \code{ydim} giving
plot dimensions, and element \code{col} containing a dataframe as described in
the previous item (e.g. \code{fgeo.x::elevation}).
}}
}
\value{
A dataframe with names \code{x/gx}, \code{y/gy} and \code{elev}.
}
\description{
This function constructs an object of class "fgeo_elevation". It standardizes
the structure of elevation data to always output a dataframe with names \code{gx},
\code{gy} and \code{elev}.
}
\section{Acknowledgments}{

This function was inspired by David Kenfack.
}

\examples{
assert_is_installed("fgeo.x")

# Input: Elevation dataframe
elevation_df <- fgeo.x::elevation$col
fgeo_elevation(elevation_df)

class(elevation_df)
class(fgeo_elevation(elevation_df))

names(elevation_df)
names(fgeo_elevation(elevation_df))

# Input: Elevation list
elevation_ls <- fgeo.x::elevation
fgeo_elevation(elevation_ls)

class(elevation_ls)
class(fgeo_elevation(elevation_ls))

names(elevation_ls)
names(fgeo_elevation(elevation_ls))
}
\concept{functions to construct fgeo classes}
\concept{habitat functions}
