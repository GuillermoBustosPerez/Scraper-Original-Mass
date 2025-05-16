library(tidyverse)
library(caret)
library(ranger)

# Load the data
load('Models/Best-Subset-Random-Forest.RData')
load('Data/Data2.RData')

# set empty matrix to store results from looping
metrics.rf <- c()

#### Loop to train the data excluding 13 flakes to serve as test set ####

repeat{
  # Get unique ids
  x <- unique(Data2$ID)
  
  # Sample 14 flakes
  s <- sample(x, 13)
  
  # new dataset excluding resharpening episodes from those 14 flakes
  Data3 <- Data2 %>% filter(!ID %in% s)
  
  # Validation set using the 14 flakes
  Validation.set <- Data2 %>% filter(ID %in% s)
  
  # set formula
  frmla1 <- as.formula("Or.Weight ~ Rem.Weight + Mean.t + Log.M.Thick + GIUR ")
  
  # Train model
  Model.RF <- ranger(
    frmla1,
    data = Data3,
    mtry = 4,
    splitrule = "extratrees",
    min.node.size = 1,
    num.trees = 500
  )
  
  # Make predictions on test set
  Validation.set$pred <- predict(Model.RF, Validation.set)$predictions
  
  Validation.set <- Validation.set %>% 
    mutate(
      Estim.Curated = 100 - ((Rem.Weight/pred)*100),
      Real.Curated = 100 - ((Rem.Weight/Or.Weight)*100)
    )
  
  
  # set temporary data frame
  temp.df <- data.frame(
    r2 = (MLmetrics::R2_Score(Validation.set$Or.Weight, Validation.set$pred)),
    MAE = (MLmetrics::MAE(Validation.set$Or.Weight, Validation.set$pred)),
    RMSE = (MLmetrics::RMSE(Validation.set$Or.Weight, Validation.set$pred)),
    MAPE = (MLmetrics::MAPE(Validation.set$Or.Weight, Validation.set$pred))*100,
    Tset.n = nrow(Validation.set),
    r2.curated = (MLmetrics::R2_Score(Validation.set$Real.Curated, Validation.set$Estim.Curated)),
    mae.curated = (MLmetrics::MAE(Validation.set$Real.Curated, Validation.set$Estim.Curated))
  )
  
  # r bind 
  metrics.rf <- rbind(metrics.rf, temp.df)
  rm(temp.df)
  # count rows on data frame
  y <- nrow(metrics.rf)
  
  # break once reached n number of rows
  if(y >= 1000){
    break
  }
  
}

# Summarise metrics
metrics.rf %>% summarise(
  mean.R2 = round(mean(r2),3),
  mean.MAE = round(mean(MAE),3),
  mean.RMSE = round(mean(RMSE),3),
  mean.MAPE = round(mean(MAPE),3),
  mean.r2.curated = round(mean(r2.curated),3),
  mean.MAE.curated = round(mean(mae.curated),3),
  mean.Test.Set.Size = round(mean(Tset.n),3)
)

