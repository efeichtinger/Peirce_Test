# Pierce code 

# July 10 2016


#Define class 

#ex
j<- list(name="joe", salary=55000, union=T)
class(j) <- "employee"
attributes(j)
j

print.employee <- function(wrkr) {
  cat(wrkr$name, "\n")
  cat("salary", wrkr$salary, "\n")
  cat("union member", wrkr$union, "\n")
}

methods(,"employee")


# Define classes
#Li, the interpretant is between R (representamen) and D (object)
#triangle relationship
triad <- list(object="i",sign="R",idea="Li")
class(triad) <- "Concept"
attributes(triad)

print.Concept <- function(tri) {
  cat("object", tri$object, "\n")
  cat("sign", tri$sign, "\n")
  cat("idea", tri$idea, "\n")
}



#
Concept <- function(O,R,i) {
  t <- list(O,R,i)
  class(t) <- append(class(t), "Concept")
}

# User would create object/instance of the class "Concept" 

# Writing a function that will be dispatched to for this class 

Concept1 <- Concept("David", "English", "34")
Concept2 <- Concept("Julie", "Spanish", "45")

