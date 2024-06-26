% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adjust-numeric-calibration.R
\name{adjust_numeric_calibration}
\alias{adjust_numeric_calibration}
\title{Re-calibrate numeric predictions}
\usage{
adjust_numeric_calibration(x, method = NULL)
}
\arguments{
\item{x}{A \code{\link[=tailor]{tailor()}}.}

\item{method}{Character. One of \code{"linear"}, \code{"isotonic"}, or
\code{"isotonic_boot"}, corresponding to the function from the \pkg{probably}
package \code{\link[probably:cal_estimate_linear]{probably::cal_estimate_linear()}},
\code{\link[probably:cal_estimate_isotonic]{probably::cal_estimate_isotonic()}}, or
\code{\link[probably:cal_estimate_isotonic_boot]{probably::cal_estimate_isotonic_boot()}}, respectively.}
}
\description{
Re-calibrate numeric predictions
}
\examples{
library(modeldata)
library(probably)
library(tibble)

# create example data
set.seed(1)
dat <- tibble(y = rnorm(100), y_pred = y/2 + rnorm(100))

dat

# specify calibration
reg_tailor <-
  tailor() \%>\%
  adjust_numeric_calibration(method = "linear")

# train tailor
reg_tailor_trained <- fit(reg_tailor, dat, outcome = y, estimate = y_pred)

predict(reg_tailor_trained, dat)
}
