# source("Scripts/00 Wrangle data.R", verbose = TRUE)
library(tidyverse); library(caret)

##### Load and muggle the data ####
load("Data/Data2.RData")
load("Models/Best-Subset-Random-Forest.RData")

#### Set formula and model evaluation ####
bs.frmla3 <- as.formula("Or.Weight ~ Rem.Weight + Mean.t + Log.M.Thick")
bs.frmla4 <- as.formula("Or.Weight ~ Rem.Weight + Log.M.Thick + GIUR")

tr_Control <- trainControl(
  verboseIter = TRUE,
  method = "repeatedcv", 
  number = 10, 
  repeats = 50,
  savePredictions = "final")

RF_grid = expand.grid(
  .mtry = 3,
  .splitrule = "extratrees",
  .min.node.size = 1)

#### Random Forest model no GIUR ####
set.seed(123)
RF_Model.BS.no.GIUR <- train(
  bs.frmla3,
  data = Data2,
  method = "ranger",
  importance = "impurity",
  tuneGrid = RF_grid,
  trControl = tr_Control)

#### Random Forest model no average t ####
set.seed(123)
RF_Model.BS.no.t <- train(
  bs.frmla4,
  data = Data2,
  method = "ranger",
  importance = "impurity",
  tuneGrid = RF_grid,
  trControl = tr_Control)
