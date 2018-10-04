
clean_data <- scprc_est_2017_18_pop_res

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
    
    #change names for remaining colums
    colnames(states4) <- c("stateName","population","popOver18","percentOver18")

    #return the results
    return(states4)
}

cleanCensus <- readData(scprc_est_2017_18_pop_res)
str(cleanCensus)
