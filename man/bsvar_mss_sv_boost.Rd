% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate.R
\name{bsvar_mss_sv_boost}
\alias{bsvar_mss_sv_boost}
\title{Bayesian estimation of Structural Vector Autoregressions with Markov-Switching 
in the Structural Matrix}
\usage{
bsvar_mss_sv_boost(
  SS,
  Y,
  X,
  prior,
  VB,
  starting_values,
  thin = 100L,
  centred_sv = FALSE,
  hyper_boost = TRUE
)
}
\arguments{
\item{SS}{a positive integer, the number of posterior draws to be generated}

\item{Y}{a \code{NxT} matrix with dependent variables}

\item{X}{a \code{KxT} matrix with regressors}

\item{prior}{a list containing the prior specification}

\item{VB}{a list providing the structural matrix specification}

\item{starting_values}{a list providing starting values to the estimated parameters}

\item{thin}{a positive integer determining MCMC thinning}

\item{centred_sv}{a logical value indicating whether the SV model should be 
in its centred form}

\item{hyper_boost}{a logical value indicating whether prior variances and scales 
beyond level one of the hierarchy are to be estimated}
}
\value{
An object of class \code{PosteriorBSVARSVMS} - a list containing the Bayesian estimation output in two elements:

\code{posterior} a list with a collection of \code{S} draws from the posterior distribution 
generated via Gibbs sampler containing many arrays and vectors whose selection depends on 
the model specification.
\code{last_draw} a list with the last draw of the current MCMC run as the starting value 
to be passed to the continuation of the MCMC estimation.
}
\description{
Estimates a Structural Vector Autoregressions with Stochastic Volatility
heteroskedasticity and Markov-switching for the structural matrix
and a three-level local-global prior hierarchical prior structure for the structural and autoregressive matrices
}
\references{
Camehl, A. & Woźniak, T. (2022) What do Data Say About Time-Variation in 
Monetary Policy Shock Identification?
}
\author{
Tomasz Woźniak \email{wozniak.tom@pm.me}
}
