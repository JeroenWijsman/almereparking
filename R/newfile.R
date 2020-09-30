# Fit a randomforest model
fit_model_randomforest <- function(data, form = 1){
  
  switch(form, 
         `1` = ranger(parked ~ hour + label + weekday, data = data, importance = "impurity"),
         `2` = ranger(parked ~ hour + label, data = data, importance = "impurity")
  )
  
  
}
