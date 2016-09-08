#Peirce August 24 2016

library(stringr)
library(tidyr)
library(plyr)

#Function for integers only 
Peirce =  function(DF)
{
  
  check.numeric <- function(N){
    !length(grep("[^[:digit:]]", as.character(N)))
  }
  
  
  col1 = DF[,1];
  col2 = DF[,2];
  col3 = DF[,3];
  
  if(check.numeric(col1))
  {
    DF$percentageofx = ecdf(col1)(col1);
  }
  
  if(check.numeric(col2))
  {
    DF$percentageofy = ecdf(col2)(col2);
  }
  
  if(check.numeric(col3))
  {
    DF$percentageofz = ecdf(col3)(col3);
  }
  
  xbool = FALSE;
  ybool = FALSE;
  zbool = FALSE;
  
  if("percentageofx" %in% colnames(DF))
  {
    if(check.numeric(col1))
    {
      x = DF$percentageofx;
      xbool = TRUE;
    }
  }
  
  if("percentageofy" %in% colnames(DF))
  {
    if(check.numeric(col2))
    {
      y = DF$percentageofy;
      ybool = TRUE;
    }
  }
  
  if("percentageofz" %in% colnames(DF))
  {
    if(check.numeric(col3))
    {
      z = DF$percentageofz;
      zbool = TRUE;
    }
  }
  
  
  for(i in 1:nrow(DF))
  {
    ##puts total percentage value
    
    
    if(xbool && ybool && zbool)
    {
      DF$Total[i] = (x[i]+y[i]+z[i])/3
    }
    
    if(xbool && ybool)
    {
      DF$Total[i] = (x[i]+y[i])/2
    }
    
    if(xbool && zbool)
    {
      DF$Total[i] = (x[i]+z[i])/2
    }
    
    if(ybool && xbool)
    {
      DF$Total[i] = (y[i]+x[i])/2
    }
    
    if(ybool && zbool)
    {
      DF$Total[i] = (y[i]+z[i])/2
    }
    
    
  }
  
  
  
  ##Creates a percentage rank of values based on the column they reside in
  
  
  
  View(DF);
  
  ##Reading the data column, 50% means a distribution that is very close to average.
  ## EF so no trend if near 50%?
}



#Integers - example made on purpose to have similar values across rows
x <- c(0,1,0,1,1,1,0,0,1,0)
y <- c(95,3,97,5,4,4,98,97,4,98)
z <- c(3,10,2,10,11,11,2,3,10,2)
df <- data.frame(x,y,z)
test.int <- Peirce(df)


x1 <- floor(runif(20, min=0, max=101))
y1 <- floor(runif(20, min=0, max=101))
z1 <- floor(runif(20, min=0, max=101))
df1 <- data.frame(x1,y1,z1)
test2 <- Peirce(df1)


#######################################################
#Made up character strings for testing character function
x2 <- c("cat","cat","cat","dog","dog","dog")
y2 <- rep(LETTERS[1:6],1)
z3 <- c("a","b","c","d","e","f")
df2 <- data.frame(x,y,z)

twitter <- read.csv("Twitter_Peirce.csv")
class(twitter)
head(twitter)
str(twitter)




#function from N Matloff book pg 92
findwords <- function(tf) {
  txt<- scan(tf,"")
  wl <- list()
  for(i in 1:length(txt)){
    wrd <- txt[i]
    wl[[wrd]] <- c(wl[[wrd]],i)
    
  }
  return(wl)
  
}

test.output <- findwords("Twitter_Peirce2.txt")
length(test.output)
#139 - words in data set 

#returns name and the place in list
test.output[10]
test.output[[10]]


#function for summing the words classified under each name
#append one of three classes for the words - sign, object, interp
#how to do this?

count.freq <- function(x){
  mats <- list()
  for(i in 1:length(x)){
    
  }
}


#but specific to these data
#pattern matching to "Mentions", "Tweets", "Replies to", "None"
#class "interpretant"

class(intrp) <- "intrp"

#function for finding list components,input x = list
find.intrp <-
  for (i in 1:length(x))
    #grep()
}


                            
Peirce.char = function(DF){
  #creates a data frame of 1 column and n rows 
  #each row has three components, obs from col1,2,and 3
  data <- DF %>% unite(strvec, 1, 2, 3, sep = ",")
  data[,"index"] <- c(rownames(data))
  return(data)
  
  #now need to loop through each row and compare it to all other rows 
    for(i in 1:nrow(data)) {
    triad <- data[i,]
    grep("^[[:alpha:]]",triad) #the problem is I don't know what to tell
                                #r to look for, stringr looks for regex
                                #I want it to look for any sequence characters
    
  }
  
}


###%in%
