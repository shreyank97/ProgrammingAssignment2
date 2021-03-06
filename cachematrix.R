## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  setMatrix <- function(y){
    x <<- y
    inverse <<- NULL
  }
  getMatrix <- function() x
  setInverse <- function(inv) inverse <<- inv
  getInverse <- function() inverse
  list(setMatrix=setMatrix, getMatrix=getMatrix, setInverse=setInverse, getInevrse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat <- x$getInverse()
  if (!is.null(mat)){
    return(mat)
  }
  mat <- solve(x)
  x$setInverse(mat)
  mat
}

