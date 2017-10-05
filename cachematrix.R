## These two functions are used to calculate the inverse of a matrix
## and caching it if it is once calculated. It optimizes the performance



## Gets a matrix and creates a function list
## which sets and gets the matrix and its reverse    

makeCacheMatrix <- function(x = matrix()) {
   
  my_inverse <- NULL
  
  setx <- function(y){
    x <<- y
    my_inverse<<-NULL
  }
  
  getx <- function() {x}
  
  getinverse <- function(){my_inverse}
  
  setinverse <- function(the_inverse){
    my_inverse <<-the_inverse
    
  }
  
  list(setx=setx, getx=getx, getinverse=getinverse,setinverse=setinverse)
}


## Gets the function list and calculates reverse 
## of the matrix inside the list
## depending on whether it is cached or not

cacheSolve <- function(x, ...) {
       
  
  my_inverse <-x$getinverse()
  
  if(!is.null( my_inverse ) ){
    
    message("Returning cached inverse")
    return(my_inverse) 
    
    
  }
    
      
      my_data <- x$getx()
      my_inverse<-solve(my_data)
      x$setinverse(my_inverse)
      my_inverse
      
    
}
