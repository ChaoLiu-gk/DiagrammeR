% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/from_igraph.R
\name{from_igraph}
\alias{from_igraph}
\title{Convert an igraph graph to a DiagrammeR one}
\usage{
from_igraph(
  igraph,
  graph_name = NULL,
  write_backups = FALSE,
  display_msgs = FALSE
)
}
\arguments{
\item{igraph}{An \pkg{igraph} graph object.}

\item{graph_name}{An optional string for labeling the graph object.}

\item{write_backups}{An option to write incremental backups of changing graph
states to disk. If \code{TRUE}, a subdirectory within the working directory will
be created and used to store \code{RDS} files. The default value is \code{FALSE} so
one has to opt in to use this functionality.}

\item{display_msgs}{An option to display messages primarily concerned with
changes in graph selections. By default, this is \code{FALSE}.}
}
\value{
A graph object of class \code{dgr_graph}.
}
\description{
Convert an igraph graph to a DiagrammeR graph object.
}
\examples{
# Create a DiagrammeR graph object
dgr_graph_orig <-
  create_graph() \%>\%
  add_gnm_graph(
    n = 36,
    m = 50,
    set_seed = 23)

# Convert the DiagrammeR
# graph to an igraph object
ig_graph <-
  dgr_graph_orig \%>\%
  to_igraph()

# Convert the igraph graph
# back to a DiagrammeR graph
dgr_graph_new <-
  ig_graph \%>\%
  from_igraph()

# Get some graph information
(dgr_graph_new \%>\%
  get_graph_info())[, 1:6]

}
