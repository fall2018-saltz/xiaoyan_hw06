
clean_data <- raw_data

readData <- function(states)
{ 
    #remove rows that not needed
    #-- first row is the total for the US, we do not need that
    states2 <- states[-1,]
    #--last row is Puerto Rico, it's not a state
    num.row <- nrow(states2)
    states3 <- states2[-num.row,]
    
    #remove the first for colums
    states4 <- states3[,-1:-4]
  colnames(dfStates2)
  col.names <- colnames(dfStates2)
  col.names
  col.names <- c("stateName","population","popOver18","percentOver18")
  col.names
  colnames(dfStates2) <- col.names
  return(dfStates2)
}
