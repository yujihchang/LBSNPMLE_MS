\name{Shooting.NPMLE}
\alias{Shooting.NPMLE}
\title{Estimation and Variable Selection for Semiparametric Transformation Models with Length-Biased Survival Data}
\usage{
Shooting.NPMLE(A, Y, D, X, r, nlan=10)
}
\arguments{
  \item{A}{Left truncation time.}
  \item{Y}{Observed survival time.}
  \item{D}{Event indicator: 1 for failure, 0 for censored.}
  \item{X}{Covariate matrix. In this example, only the first \code{p} columns are used for estimation.}
  \item{r}{Tuning parameter for the generalized log transformation model.}
}
\description{
This function implements the proposed estimation and variable selection procedure in the paper entitled
\emph{``Estimation and Variable Selection for Semiparametric Transformation Models with Length-Biased Survival Data''}.
It is part of an R package developed to accompany the methodology described in the paper.
}
\value{
An object of class \code{"Shooting.NPMLE"} containing the following components:

\itemize{
  \item{\code{npmle}: }{Nonparametric maximum likelihood estimator without variable selection.}
  \item{\code{haz}: }{Estimated cumulative baseline hazard function.}
  \item{\code{npmle.sd}: }{Estimated standard deviation of \code{npmle}.}
  \item{\code{lambda.aic}: }{Selected tuning parameter \code{lambda} based on AIC.}
  \item{\code{lambda.bic}: }{Selected tuning parameter \code{lambda} based on BIC.}
  \item{\code{AIC}: }{Akaike Information Criterion value.}
  \item{\code{BIC}: }{Bayesian Information Criterion value.}
  \item{\code{coef.aic}: }{Estimated regression coefficients selected by AIC.}
  \item{\code{coef.bic}: }{Estimated regression coefficients selected by BIC.}
  \item{\code{coef.aic.sd}: }{Standard deviation of \code{coef.aic}.}
  \item{\code{coef.bic.sd}: }{Standard deviation of \code{coef.bic}.}
  \item{\code{choose.X.aic}: }{Indices of covariates selected based on AIC.}
  \item{\code{choose.X.bic}: }{Indices of covariates selected based on BIC.}
}
}


\examples{
data(expdata)

A <- data[, 1]
Y <- data[, 2]
D <- data[, 3]
X <- data[, -c(1:3)]
ans0 <- Shooting.NPMLE(A, Y, D, X, r = 0.4, nlan = 10)
str(ans0)
}
\keywords{survival, semiparametric, transformation models, variable selection, length-biased}
