## Basically applied the same priciples to the example provided
## in the Programming Assignment 2. 

## In the makeCacheMatrix, I create a function that gets an argument
## which will be a matrix. There's an inner function that holds the value 
## the variable and turns it into a matrix.
## Soon after that it inverts the matrix and holds it into the getsolve object.

makeCacheMatrix <- function(x = matrix()) {
  mat <- NULL
  set <- function(y) {
    x <<- y
    mat <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) mat <<- solve
  getsolve <- function() mat
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## The cacheSolve function tests the value of the object already solved 
## in the function makeCacheMatrix and sees if it's null.
## If it's not, it prints that. If it is, it solves that.

cacheSolve <- function(x, ...) {
  mat <- x$getsolve()
  if(!is.null(mat)) {
    message("getting cached data")
    return(mat)
}
}