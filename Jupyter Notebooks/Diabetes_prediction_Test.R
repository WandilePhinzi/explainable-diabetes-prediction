#1. Load the diabetes prediction dataset
library(RCurl)#load the RCurl to read the data

diabetes_prediction_dataset <= read.csv("https://www.kaggle.com/api/v1/datasets/download/iammustafatz/diabetes-prediction-dataset")
View(diabetes_prediction_dataset)#View the dataset

#2. Determine if the dataset contains any missing values
sum(is.na(diabetes_prediction_dataset))

#3. If the data is clean, we need to randomly introduce NA to the dataset
na.gen <- function(data,n)
{
  i <-1
  while (i<n+1)
  {
    idx1 <- sample(1:nrow(data),1)#Determine the row it randomly selects
    idx2 <- sample(1:ncol(data),1)# Determine the column it randomly selects
    data[idx1,idx2] <- NA
    i = i+1
  }
  return (data)
}

diabetes_prediction_dataset <- diabetes_prediction_dataset[,-1]



#4. Now check the total number of NA is the dataset
sum(is.na(diabetes_prediction_dataset))
colSums((is.na(diabetes_prediction_dataset)))
str(diabetes_prediction_dataset)
View(sum(is.na(diabetes_prediction_dataset)))
View(colSums((is.na(diabetes_prediction_dataset))))

#Now to check the rows with the missing data
missingdata <- diabetes_prediction_dataset[!complete.cases(diabetes_prediction_dataset),]
View(missingdata)

sum(is.na(missingdata))


#5. Now to handle the missing values
clean.data <-na.omit(diabetes_prediction_dataset)
sum(is.na(clean.data))

View(diabetes_prediction_dataset)


#Imputation ;Replace missing values with the column's

#Mean
diabetes_prediction_dataset.impute <- diabetes_prediction_dataset
for (i in which(sapply(diabetes_prediction_dataset.impute, is.numeric)))
     {
  diabetes_prediction_dataset.impute[is.na(diabetes_prediction_dataset.impute[,i]),i]<- mean(diabetes_prediction_dataset.impute[,i], na.rm = TRUE)
       
}
sum(is.na(diabetes_prediction_dataset.impute))

