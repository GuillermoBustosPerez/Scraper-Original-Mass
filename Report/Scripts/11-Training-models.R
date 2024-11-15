library(tidyverse); library(caret)

##### Load and muggle the data ####
load("Report/Data/Data2.RData")

#### Set formula and model evaluation ####
bs.frmla <- as.formula("Or.Weight ~ Rem.Weight + Mean.t + Log.M.Thick + GIUR")

tr_Control <- trainControl(
  verboseIter = TRUE,
  method = "repeatedcv", 
  number = 10, 
  repeats = 50,
  savePredictions = "final")

#### Train Multiple linear regression #####
set.seed(123)
MLR_Model.BS <- train(
  bs.frmla,
  data = Data2,
  method = "lm",
  trControl = tr_Control)

save(MLR_Model.BS, file = "Models/Best-Subset-MLR.RData")

##### Train linear SVM ####
svml.grid = expand.grid(
  C = seq(4, 12, length = 19))

set.seed(123)
SVML_Model.BS <- train(
  bs.frmla,
  data = Data2,
  method = "svmLinear",
  tuneGrid = svml.grid,
  trControl = tr_Control)

svml.grid = expand.grid(
  C = SVML_Model.BS$bestTune[[1]])

set.seed(123)
SVML_Model.BS <- train(
  bs.frmla,
  data = Data2,
  method = "svmLinear",
  tuneGrid = svml.grid,
  trControl = tr_Control)

save(SVML_Model.BS, file = "Models/Best-Subset-SVM-Linear.RData")

#### Random Forest model ####
RF_grid <- expand.grid(
  .mtry = 1:4,
  .splitrule = "extratrees",
  .min.node.size = c(1:6))

set.seed(123)
RF_Model.BS <- train(
  bs.frmla,
  data = Data2,
  method = "ranger",
  importance = "impurity",
  tuneGrid = RF_grid,
  trControl = tr_Control)

RF_Model.BS$bestTune[[3]]
RF_Model.BS$results

RF_grid <- expand.grid(
  .mtry = RF_Model.BS$bestTune[[1]],
  .splitrule = "extratrees",
  .min.node.size = RF_Model.BS$bestTune[[3]]
)

set.seed(123)
RF_Model.BS <- train(
  bs.frmla,
  data = Data2,
  method = "ranger",
  importance = "impurity",
  tuneGrid = RF_grid,
  trControl = tr_Control)

save(RF_Model.BS, file = "Models/Best-Subset-Random-Forest.RData")