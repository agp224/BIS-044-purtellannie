surv <- read.csv("city-of-st-louis-surveycsv")
decode <- read.csv("city-of-st-louis-decode.csv")
surveyDF <- data.frame(surv)
decodeDF <- data.frame(decode)
OwnerIndex <- grep("Owner", colnames(surveyDF))[1]
for(i in 1:nrow(surveyDF)){
  name <- surveyDF[i, OwnerIndex]
  if(!grepl("^A", name)){
    surveyDF <- surveyDF[-c(i),]
  }
}

rownames(surveyDF) = paste0("", 1:nrow(surveyDF))

#Filter
rownames(surveyDF[order(surveyDF$Land, decreasing = T),])[1:10] 