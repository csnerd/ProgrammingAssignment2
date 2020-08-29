## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  re <- NULL
  set <- function(y){
    x <<- y 
    re <<- NULL
  }
  
  get <- function() x
  setsolve <- function(solve) re <<- solve
  getsolve <- function() re
  
  list(set = set,
       get = get,
       setsolve = setsolve
       getsolve = setsolve)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  re  <- x$getsolve()
  if(!is.null(re)){
    message("getting cached data")
    return(re)
  }
  data <- x$get()
  re <- solve(data, ...)
  x$setsolve(re)
  re
}

