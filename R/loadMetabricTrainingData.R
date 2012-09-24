#' Load training data for the metabric competition
#'
#' Loads data for gene expression, copy number, clinical covariates and clinical survival times for the training dataset
#' used to train predicitve models.
#'
#' @return a list with elements: exprData, containing an ExpressionSet of gene expression features;
#' copyData, containing an ExpressionSet of copy number features; clinicalFeaturesData, containing an
#' AnnotatedDataFrame of clinical covariates; and clinicalSurvData, containing a Surv object
#' of survival times and censor values.
#' @author Adam Margolin, Erhan Bilal
#' @export


loadMetabricTrainingData <- function(){

  metabricTrainingData <- list()
  
  idExpressionLayer <- "syn1125612"
  expressionLayer <- loadEntity(idExpressionLayer)
  metabricTrainingData$exprData <- expressionLayer$objects[[1]]
  
  idCopyLayer <- "syn1125614"
  copyLayer <- loadEntity(idCopyLayer)
  metabricTrainingData$copyData <- copyLayer$objects[[1]]
  
  idClinicalFeaturesLayer <- "syn1184746"
  clinicalFeaturesLayer <- loadEntity(idClinicalFeaturesLayer)
  metabricTrainingData$clinicalFeaturesData <- clinicalFeaturesLayer$objects[[1]]
  

  idClinicalSurvLayer <- "syn1125610"
  clinicalSurvLayer <- loadEntity(idClinicalSurvLayer)
  metabricTrainingData$clinicalSurvData <- clinicalSurvLayer$objects[[1]]

  
  return(metabricTrainingData)
}
