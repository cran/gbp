% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{gbp3d_solver_dpp_prep_create_p}
\alias{gbp3d_solver_dpp_prep_create_p}
\title{gbp3d_solver_dpp_prep_create_p}
\usage{
gbp3d_solver_dpp_prep_create_p(ldh, m)
}
\arguments{
\item{ldh}{3xN matrix of l, d, h of it}

\item{m}{3x1 vector of l, d, h of bn}
}
\value{
p
}
\description{
auxilium of gbp3d_solver_dpp
}
\details{
create p via ldh and m via cluster max(l, d, h) and area strategy
}

