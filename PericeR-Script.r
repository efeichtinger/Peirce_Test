library(compare)

Concept = function(x,y,z)
{
  me = list(x,y,z)
  
  #set up first variable as m1,
  #second as LN1 decoder
  #third as the concept.
  
  #Hello
  #English
  #greetings
  
  #Hola
  #Spanish
  #greetings
  
  #greetings are linked, therefore first variable is linked hello,Hola are decoded by variable 2.
  
  class(me) = append(class(me), "Concept")
  return(me)
  
}


Concept1 = Concept("Hello","English","Greetings")
Concept2 = Concept("Hola","Spanish","Greetings")

Test = function(object1, object2)
{
  
  x = compare(object1,object2)
  #this will return a true logic table
  
  
  
  return(x)
  
  
}

#Erin Test
etest <- Test(Concept1, Concept2)


#testing unique string formula.

# unique_strings <- function(n){
#   string_i <- 1
#  string_len <- 1
#  ans <- character(n)
#  chars <- c(letters,LETTERS)
#  new_strings <- function(len,pfx){
#    for(i in 1:length(chars)){
#      if (len == 1){
#        ans[string_i] <<- paste(pfx,chars[i],sep='')
#        string_i <<- string_i + 1
#      } else {
#        new_strings(len-1,pfx=paste(pfx,chars[i],sep=''))
#      }
#      if (string_i > n) return ()
#    }
#  }
#  while(string_i <= n){
#    new_strings(string_len,'')
#    string_len <- string_len + 1
#  }
#  sample(ans)
#}





x = Test(Concept1,Concept2)

## need to re-write these to reflect the proper function 

if(x$detailedResult[1])
{
  print("Same Word")
}
if(x$detailedResult[2])
{
  print("Same Language")
}
if(x$detailedResult[3])
{
  #if decode is the same
  print(Concept1[1])
  print(Concept2[1])
}


#should return False False True

# create a way to link 2 objects together.


