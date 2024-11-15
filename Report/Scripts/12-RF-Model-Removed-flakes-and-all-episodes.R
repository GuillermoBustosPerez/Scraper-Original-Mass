library(tidyverse)
library(caret)
library(ranger)

# Load the data
load('Models/Best-Subset-Random-Forest.RData')
load('Data/Data2.RData')

# set empty matrix to store results from looping
Predictions.rf <- c()

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
  Predictions.rf <- rbind(Predictions.rf, Validation.set)
  
  # r bind 
  
  rm(Validation.set)
  # count rows on data frame
  y <- nrow(Predictions.rf)
  
  # break once reached n number of rows
  if(y >= 100000){
    break
  }
  
}