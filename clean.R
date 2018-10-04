
clean_data <- raw_data

readData <- function(states){ 
  dfStatesRaw <- read.csv(url(urlToRead), stringsAsFactors=FALSE)
  dfStates <- dfStatesRaw[c(-1,-53),-1:-3]
  dfStatesFinal <- dfStates2[,-1]
  View(dfStates2)
  colnames(dfStates2)
  col.names <- colnames(dfStates2)
  col.names
  col.names <- c("stateName","population","popOver18","percentOver18")
  col.names
  colnames(dfStates2) <- col.names
  return(dfStates2)
}
