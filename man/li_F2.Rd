\name{li_F2}
\alias{li_F2}

\title{
Negative log-likelihood of \code{F2}.
}

\description{
This function is used for fitting \eqn{F_2} to simulated realizations of \eqn{S}.
}

\usage{
li_F2(pars, x, y, pred, f1_preds)
}

\arguments{
  \item{pars}{
    a vector of parameter values of length 6 to be fit using \code{optim}.
}
  \item{x}{
    a vector of x values at which to evaluate the likelihood. This is \eqn{\hat{p}} by default or \code{x_vars} is given.
}
  \item{y}{
    a vector of y values at which to evaluate the likelihood.
}
  \item{pred}{
    a vector of predicted probabilities from the model. This is \eqn{\hat{p}}.
}
  \item{f2_preds}{
    a vector of predicted probabilities from the current fit of \code{F1}. Along with \code{pred}, this is used to dissallow illegal predictions of \code{F2}.
}
}


\value{
    The negative log-likelihood value. \eqn{- \sum_I {\log(F_2(x_i \mid \theta))}}, where \eqn{\theta} is the vector of \code{pars}.
}

\author{
    Corey Chivers <corey.chivers@mail.mcgill.ca>
}
