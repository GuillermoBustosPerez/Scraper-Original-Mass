library(tidyverse)

load("Models/Best-Subset-Random-Forest.RData")
load("Models/Best-Subset-MLR.RData")
load("Models/Best-Subset-SVM-Linear.RData")
load("Models/Best-Subset-GBM.RData")

#### Put all predictions of each model ####

Predicted.MLR <- as.data.frame(MLR_Model.BS$pred) %>% 
  group_by(rowIndex) %>% 
  summarise(
    mean.pred = abs(round(mean(pred),2)),
    mean.obs = round(mean(obs),2)) %>% 
  mutate(
    Rema.Weight = Data2$Rem.Weight,
    Real.W.Retrieved = Data2$W.Retrieved) %>% 
  mutate(
    Pred.W.Retrieved = abs((mean.pred - Rema.Weight)),
    Pred.Curated = 100 - (Rema.Weight/mean.pred)*100,
    Real.Curated = 100 - (Rema.Weight/mean.obs )*100,
    Residuals = mean.obs - mean.pred,
    Abs.W.Ret = abs(Pred.W.Retrieved),
    Pred.Curated2 = 100 - (Rema.Weight/(Rema.Weight+Abs.W.Ret)*100),
    Residual.Curated = Real.Curated - Pred.Curated)


Predicted.SVML <- as.data.frame(SVML_Model.BS$pred) %>% 
  group_by(rowIndex) %>% 
  summarise(
    mean.pred = abs(round(mean(pred),2)),
    mean.obs = round(mean(obs),2)) %>% 
  mutate(
    Rema.Weight = Data2$Rem.Weight,
    Real.W.Retrieved = Data2$W.Retrieved) %>% 
  mutate(
    Pred.W.Retrieved = abs((mean.pred - Rema.Weight)),
    Pred.Curated = 100 - (Rema.Weight/mean.pred)*100,
    Real.Curated = 100 - (Rema.Weight/mean.obs )*100,
    Residuals = mean.obs - mean.pred,
    Abs.W.Ret = abs(Pred.W.Retrieved),
    Pred.Curated2 = 100 - (Rema.Weight/(Rema.Weight+Abs.W.Ret)*100),
    Residual.Curated = Real.Curated - Pred.Curated)


Predicted.RF <- as.data.frame(RF_Model.BS$pred) %>% 
  group_by(rowIndex) %>% 
  summarise(
    mean.pred = abs(round(mean(pred),2)),
    mean.obs = round(mean(obs),2)) %>% 
  mutate(
    Rema.Weight = Data2$Rem.Weight,
    Real.W.Retrieved = Data2$W.Retrieved) %>% 
  mutate(
    Pred.W.Retrieved = abs((mean.pred - Rema.Weight)),
    Pred.Curated = 100 - (Rema.Weight/mean.pred)*100,
    Real.Curated = 100 - (Rema.Weight/mean.obs )*100,
    Residuals = mean.obs - mean.pred,
    Abs.W.Ret = abs(Pred.W.Retrieved),
    Pred.Curated2 = 100 - (Rema.Weight/(Rema.Weight+Abs.W.Ret)*100),
    Residual.Curated = Real.Curated - Pred.Curated)


Predicted.GBM <- as.data.frame(GBM_Model.BS$pred) %>% 
  group_by(rowIndex) %>% 
  summarise(
    mean.pred = abs(round(mean(pred),2)),
    mean.obs = round(mean(obs),2)) %>% 
  mutate(
    Rema.Weight = Data2$Rem.Weight,
    Real.W.Retrieved = Data2$W.Retrieved) %>% 
  mutate(
    Pred.W.Retrieved = abs((mean.pred - Rema.Weight)),
    Pred.Curated = 100 - (Rema.Weight/mean.pred)*100,
    Real.Curated = 100 - (Rema.Weight/mean.obs )*100,
    Residuals = mean.obs - mean.pred,
    Abs.W.Ret = abs(Pred.W.Retrieved),
    Pred.Curated2 = 100 - (Rema.Weight/(Rema.Weight+Abs.W.Ret)*100),
    Residual.Curated = Real.Curated - Pred.Curated)