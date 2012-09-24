\name{evaluateMetabricModelFromCode}
\alias{evaluateMetabricModelFromCode}
\title{Script to evaluate an uploaded model with source code from Synapse}
\usage{
  evaluateMetabricModelFromCode(submittedModelId,
    trainingData = NULL, testData = NULL)
}
\arguments{
  \item{submittedModelId}{the Synapse ID of the submitted
  model}

  \item{trainingData}{training data used for evaluation.
  Loaded by default from Synapse if not specified.}

  \item{testData}{test data used for evaluation. Loaded by
  default from Synapse if not specified.}
}
\description{
  Function used by model evaluation harness to score
  submitted models.
}
\author{
  Adam Margolin
}

