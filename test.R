#test code

a <- c("dog","dog","cat","cat","cat","parrot","rat","dog","dog","cat",
       "cat","rat")
b <- c(rep(LETTERS[1:2],6))
c <- c(rep(1:4, 3))

abc <- data.frame(a,b,c)
colnames(abc) <- c("pet","apt","ed")

a1 <- c("dog","cat","cat","cat","dog","dog","dog","dog","dog","cat",
        "dog", "dog")
b1 <- c(rep(LETTERS[3:4],6))
c1 <- c(rep(5:8, 3))
abc2

count(df, vars = NULL, wt_var = NULL)
count(abc, vars="pet")



## this way won't work either 
mat <- as.numeric(abc$pet == abc2$pet)


### what the fuck is this????? 
occurences<-table(unlist(abc$a))



output <- data.frame(pet = NA, apt = NA, ed = NA)
dfrow <- 1

blurb <- function(data){    
  for(i in 1:nrow(data)) {
    sample <- data[i, ] #first row, need all rows
    for(j in (i+1):nrow(data)) if(i+1 <= nrow(data)) {
      matches <- 0
      for(V in 1:ncol(data)) { #want in a specific column
        if(data[j,V] == sample[,V]) { 
          matches <- matches + 1
        }     
      }
      if(matches >= 1) {
        duplicate <- data[j, ]
        pair <- cbind(rownames(sample), rownames(duplicate), matches)
        output[dfrow, ] <- pair
        dfrow <- dfrow + 1
        
        return(output)
      }
    }
  }
}

x <- blurb(twit)


#Name rows and use the line a[rownames)(a)=='a']
#But the row names would be dependent on the value in row i, column j 
#How could I write a program to assign row names (like dummy vars)
#to columns that share a value at row i, column j 

a = matrix(1:18, nrow=6, ncol=3)
rownames(a) <- c('a', 'a', 'a', 'b', 'b', 'b')
colnames(a) <- c('foo', 'bar', 'bat')
a[rownames(a)=='a',]
a

