# Peirce round 2 
# July 20 2016 - met with Alon 

# Input of main function is dataframe with at least 3 columns and positions of 
# sign, object, interpretant specified in arguments 
# Maybe x could be null and s,o & I are vectors of same length - change at 10
# Returns object of class "Peirce" 

## generic.class
## e.g. mean.date <- ()

# PeirceMatch <- function(s, o, I, data){} 
# sign=position in df and same for ob and int

# Block 1
# Define function
PeirceMatch <- function(data, ...) {   
  #data=data frame with 3 columns only where the user knows which column
  #is interpretant 
  #or 3 vectors for a b and c with same length?
     
## arg name matching? 
## not sure if this below is necessary  - some functions have this, others don't
  
  if (!is.data.frame(data)) { 
    stop("Data frame is required")
  }
  
####################################################################
#Evaluate the sign position argument 
    #if (missing(sign)) 
      #stop("Sign required") 

#Evaluate the object poition argument
    #if (missing(object))
      #stop("Object required")

#Evaluate the interpretant position argument 
    #if (missing(Interpretant)) 
      #stop("Interpretant required")
####################################################################  
#objects internal to function 
dat <- data
sn <- data[,1]
ob <- data[,2]
intp <- data[,3]

#Necessary to have class constructor function to check input?
#returns a list with the new class label 
#tri <- function(x,y,z){     #x = sign, y = obhject, z = interpretant
  #t = list(x,y,z)
  #class(t) = append(class(t), "Peirce")
  #return(t)
#}

#cl.ob <- tri(s1,o1,idea)
#Add class attribute to the input df?

## Additional arguments...?

# Block 2 - Main Program
# Look for matching values of interpretant among rows representing triads

  if (!is.null(data)){

    com <- count(data, vars = intp[,1], wt_var = NULL) #won't take [,1]
    return(com)

    # will not work for this task
    #adply(data,1,match)  ### the difficult part is extending match to 
### look at rows 1:n 


    }
  } 

#pass to the matching function 

    #first objective: how many rows have a match at spot I?
    #split into each row?
    #somehow each row needs to be considered but I don't know how
    #look for matches to each row for every row
    
    #the real problem is going through each and every row
    #as far as I can tell, existing r functions only match one to one
    #no way to match a dataframe to itself as far as I can tell 


  ## WANT: 
    #for every row in this data frame, look for matches at the element
    #of every other row at position "I" or column 3

peirce <- function(data)
    for(i in 1:nrow(data)) {
      com <- 1:nrow(data)
        for(j in (i+1):nrow(data)) if(i+1 <= nrow(data)){
        matches <- 0 
          
          for(k in data[,3])
            if (data[j,k]) == com[,k]){
              matches <- matches + 1
            }    
    }
}

    mat.df <- data[grep("", data[,3]), ]
    #but I don't known how to make it flexible to accept anything
    #apparently need a name of the column instead of a subscript
    #so now that I have a subset, is that useful? 
    

      # x %in% data - returns logical vector indicating if there is a match
  
      #Methods for numeric values and strings
      #Want to say for the ENTRIES in any or all rows, 
        #if entries are numeric, treat a certain way

#idea is to create some function for matching then apply it to the interpretant
#object

      
    
##################################################################
#Specifying the summary of the output
#How many rows match on any given I
#Attributes of summary output 

#compile components into summary 

#At end where class is specified of the output object 
  class(rtab) <- "Peirce"
  rtab

}
      