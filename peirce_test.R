# Test of coding scheme 7 11 2016 

# Peirce Code 

#Example from the web
# Constructor function for the class
#cname <- function(x, ...)  {
  #args <- list(...)
  # Do something here with x, args and put in something
  #object <- list(attribute.name = something, ..)
  #class(object) <- "cname"
  #return (object)
}

#Class "concept" or "triad" or whatever the best name is 
#Constructor function for class "concept"/"triad"
#"BuildTRI" - for building triad - note that names can change anytime
#BuildTRI <- function(x,y,z){
  t <- list(x,y,z)
  attr(t, "class") <- "concept"
  t  
}


#Objects of class "concept"
triad1 <- BuildTRI("car", "slow", "road")
triad2 <- BuildTRI("boat","fast", "water")

triangulation <- function(x,y) {
  UseMethod("triangulation")
}

triangulation.default <- function(x) {
  cat("This is a generic function")
  }

#x,y,z are sign, Li or interpretant, and object
#I think this makes sense due to the directional relationship 
#Li is between the sign and the object 

#Function for triangulation takes objects of class "concept" with three node
#Looks for connection at Li 


## 7/13/2016 Rewrite for one argument 

#Input data frame with at least 3 columns

#User calls this function to convert data frame to class "triad"
BuildTRI <- function(x){
  t <- list(x)
  attr(t, "class") <- "triad"
  return(t)
}

## Next is triangulation function
## User would put the location of x,y,z (sign, object, interpretant)
## Pulling out specific columns where the 3 components of interest will go

#Triangulation takes 3 points on the triangle and uses Peirce formula 

#Enumerate z (interpretant, Li)
#Grab row, compare to enumerated
#Histograms 
#Compare each row (representing a triad) to all other triads 

#The relationship of x and y to the enumerated z (z is the interpretant)
#Finding all matches to Li

#Result is xy rel, xz rel, yz rel (percent of relationships)
#Then we could see what Li is representative of all other 


