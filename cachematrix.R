e two functions will be used to cach the inverse of a matrix.

## This function will create list that will set/get the Value of the matrix
## set/get value of inverse matrix
makeCacheMatrix <- function(x = matrix()) {
  ## Return a matrix that is the inverse of 'x'
  invMatrix <- NULL
  set <- function(y) {
    x <<- y
    invMatrix <<- NULL
  }
  #getter for X
  get <- function() x
  setInverseMatrix <- function(i) invMatrix <<- i
  getInverseMatrix <- function() invMatrix
  list(set=set, get=get, setInverseMatrix=setInverseMatrix, getInverseMatrix=getInverseMatrix)
}


## this method will return the inverse Matrix

cacheSolve <- function(x,...) {
  inv <- x$getInverseMatrix()
  if(!is.null(inv)) {
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverseMatrix(inv)
  #inv
}
