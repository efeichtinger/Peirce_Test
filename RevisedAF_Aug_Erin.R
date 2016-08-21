library(stringr)
#str_subset()

Peirce =  function(DF)
{
  
  ## EF 8/11/2016 - not convinced on this line as it is 
  ## What if we have non-numeric data? How can this approach work?
  ## Seems like it only works on numeric data, can't work on twitter data
  check.numeric <- function(N){
    !length(grep("[^[:digit:]]", as.character(N)))
    
    #(not) get length of object in grep
    # 
  }
  
  
  col1 = DF[,1];
  col2 = DF[,2];
  col3 = DF[,3];
  
  if(check.numeric(col1))
  {                        #ecdf returns a function for a dist'n
                           #why call col twice?
    DF$percentageofx = ecdf(col1)(col1);
  }
  
  if(check.numeric(col2))       #need else statements to deal with characters
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
  
 
  ##Are comparing across columns or rows? Are we looking at matches in
  #the dist'n at position 3 (object)?
  
  ##Creates a percentage rank of values based on the column they reside in
  
  #What about other summary outputs?
  
  View(DF);
  
  ##Reading the data column, 50% means a distribution that is very close to average.
  
}

## Need to extend function for character vectors but I don't see how
## we could use ecdf for this 
## The twitter data set couldn't be classified using this

## else statements 


#test
a <- sample(1:10, 10, replace=TRUE)
b <- sample(90:100, 10, replace=TRUE)
c <- sample(90:100, 10, replace=TRUE)

aa <- sample(1:1, 10, replace=TRUE)
bb <- sample(1:1, 10, replace=TRUE)
cc <- sample(0.1:1, 10, replace=TRUE)

dff <- data.frame(a,b,c)
test <- Peirce(dff)

d <- data.frame(aa,bb,cc)
test2 <- Peirce(d)
#Right should be all 100% since they are the same 

aaa <- c(0,1,0,1,1,1,0,0,1,0)
bbb <- c(95,3,97,5,4,4,98,97,4,98)
ccc <- c(3,10,2,10,11,11,2,3,10,2)
dd <- data.frame(aaa,bbb,ccc)
test3 <- Peirce(dd)


#### Testing some functions for string matching
#making use of regular expressions


