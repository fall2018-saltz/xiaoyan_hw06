
clean_data <- raw_data

readData <- function(states)
{ 
    #remove rows that not needed
    #-- first row is the total for the US, we do not need that
  states2 <- states[-1,]
  View(dfStates2)
  colnames(dfStates2)
  col.names <- colnames(dfStates2)
  col.names
  col.names <- c("stateName","population","popOver18","percentOver18")
  col.names
  colnames(dfStates2) <- col.names
  return(dfStates2)
}
