% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MultiAssayExperiment-methods.R
\docType{methods}
\name{subsetByColumn}
\alias{subsetByColumn}
\alias{subsetByColumn,MultiAssayExperiment,ANY-method}
\alias{subsetByColumn,MultiAssayExperiment,List-method}
\alias{subsetByColumn,MultiAssayExperiment,character-method}
\alias{subsetByColumn,MultiAssayExperiment,list-method}
\title{Subset \code{MultiAssayExperiment} object}
\usage{
subsetByColumn(x, y)

\S4method{subsetByColumn}{MultiAssayExperiment,ANY}(x, y)

\S4method{subsetByColumn}{MultiAssayExperiment,character}(x, y)

\S4method{subsetByColumn}{MultiAssayExperiment,list}(x, y)

\S4method{subsetByColumn}{MultiAssayExperiment,List}(x, y)
}
\arguments{
\item{x}{A \code{\link{MultiAssayExperiment}} object}

\item{y}{Either a \code{numeric}, \code{character} or
\code{logical} object indicating what rownames in the pData to select
for subsetting}
}
\value{
A \code{\link{MultiAssayExperiment}} object
}
\description{
\code{subsetByColumn} returns a subsetted
\code{\linkS4class{MultiAssayExperiment}} object
}
\section{Methods (by class)}{
\itemize{
\item \code{x = MultiAssayExperiment,y = ANY}: Either a \code{numeric} or \code{logical} vector
to apply a column subset of a \code{MultiAssayExperiment} object

\item \code{x = MultiAssayExperiment,y = character}: Use a \code{character} vector for subsetting
column names

\item \code{x = MultiAssayExperiment,y = list}: Use a \code{list} to subset by samples in a
\code{MultiAssayExperiment}

\item \code{x = MultiAssayExperiment,y = List}: Use an S4 \code{List} to subset a
\code{MultiAssayExperiment}. The order of the subsetting elements in this
\code{List} must match that of the \code{ExperimentList} in the
\code{MultiAssayExperiment}.
}}
\examples{
## Load a MultiAssayExperiment example
example("MultiAssayExperiment")

## Subset by character vector (Jack)
subsetByColumn(myMultiAssayExperiment, "Jack")

## Subset by numeric index of pData rows (Jack and Bob)
subsetByColumn(myMultiAssayExperiment, c(1, 3))

## Subset by logical indicator of pData rows (Jack and Jill)
subsetByColumn(myMultiAssayExperiment, c(TRUE, TRUE, FALSE, FALSE))

}

