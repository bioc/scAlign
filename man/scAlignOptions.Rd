% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scAlignClass.R
\name{scAlignOptions}
\alias{scAlignOptions}
\title{Set training options}
\usage{
scAlignOptions(
  steps = 15000,
  steps.decoder = 10000,
  batch.size = 150,
  learning.rate = 1e-04,
  log.every = 5000,
  architecture = "large",
  batch.norm.layer = FALSE,
  dropout.layer = TRUE,
  num.dim = 32,
  perplexity = 30,
  betas = 0,
  norm = TRUE,
  full.norm = FALSE,
  early.stop = FALSE,
  walker.loss = TRUE,
  reconc.loss = FALSE,
  walker.weight = 1,
  classifier.weight = 1,
  classifier.delay = NA,
  gpu.device = "0",
  seed = 1234
)
}
\arguments{
\item{steps}{(default: 15000) Number of training iterations for neural networks.}

\item{steps.decoder}{Number of training iterations for neural networks.}

\item{batch.size}{(default: 150) Number of input samples per training batch.}

\item{learning.rate}{(default: 1e-4) Initial learning rate for ADAM.}

\item{log.every}{(default: 5000) Number of steps before saving results.}

\item{architecture}{(default: "small") Network function name for scAlign.}

\item{batch.norm.layer}{(default: FALSE) Include batch normalization in the network structure.}

\item{dropout.layer}{(default: TRUE) Include dropout in the network.}

\item{num.dim}{(default: 32) Number of dimensions for joint embedding space.}

\item{perplexity}{(default: 30) Determines the neighborhood size for each sample.}

\item{betas}{(default: 0) Sets the bandwidth of the gaussians to be the same if > 0. Otherwise per cell beta is computed.}

\item{norm}{(default: TRUE) Normalize the data mini batches while training scAlign (repeated).}

\item{full.norm}{(default: FALSE) Normalize the data matrix prior to scAlign (done once).}

\item{early.stop}{(default: TRUE) Early stopping during network training.}

\item{walker.loss}{(default: TRUE) Add walker loss to model.}

\item{reconc.loss}{(default: FALSE) Add reconstruction loss to model during alignment.}

\item{walker.weight}{(default: 1.0) Weight on walker loss component}

\item{classifier.weight}{(default: 1.0) Weight on classifier loss component}

\item{classifier.delay}{(default: NULL) Delay classifier component of loss function until specific training step. Defaults to (2/3)*steps.}

\item{gpu.device}{(default: '0') Which gpu to use.}

\item{seed}{(default: 1245) Sets graph level random seed in tensorflow.}
}
\value{
Options data.frame
}
\description{
Defines parameters for optimizer and training procedure.
}
\examples{

options=scAlignOptions(steps=15000,
                       log.every=5000,
                       early.stop=FALSE,
                       architecture="large")

}
