## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  re <- NULL                      ##return value init
  set <- function(y){
    x <<- y                       ##inversing 
    re <<- NULL
  }
  
  get <- function() x
  setsolve <- function(solve) re <<- solve  ##setter for the matrix to solve 
  getsolve <- function() re    ## function return the inverse matrix 
  
  list(set = set,
       get = get,
       setsolve = setsolve,
       getsolve = setsolve) ##setting a list off setter and getter functions 
    
}


## Write a short comment describing this function
##function to solve the cashed inverse 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  re  <- x$getsolve()
  if(!is.null(re)){
    message("getting cached data") ## cached matrix exists  
    return(re)
  }
  data <- x$get()
  re <- solve(data, ...) ## solve new data matrix and return inverse
  x$setsolve(re)
  re
}

