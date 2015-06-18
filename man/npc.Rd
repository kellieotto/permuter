% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/npc.R
\name{npc}
\alias{npc}
\title{Non-parametric combination of tests}
\usage{
npc(pvalues, distr, combine = "fisher", alternatives = "greater")
}
\arguments{
\item{pvalues}{Vector of partial p-values for tests}

\item{distr}{Matrix or dataframe, columns are approimate null distribution for each partial test}

\item{combine}{Combining function (default is Fisher)}

\item{alternatives}{Optional, vector of alternatives for each test (default is all "greater")}
}
\value{
A single p-value for the global test
}
\description{
Combines partial p-values from individual hypothesis tests \eqn{H_{0i}} against \eqn{H_{1i}}
to test the global null hypothesis
\deqn{\cap_{i} H_{0i}}
against the alternative
\deqn{\cup_{i} H_{1i}}
using a combining function.
}
\details{
For details on the combining functions, see \code{\link{fisher}}, \code{\link{liptak}}, and \code{\link{tippett}}.

Alternative options are "greater", "less", or "two-sided". If specified, length of alternatives must
either be 1 or match the length of p.
}
