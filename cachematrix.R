## Put comments here that give an overall description of what your
## functions do

## Store the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  ## Set function
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  ## Get function
  get <- function() x
  ## Set Matrix Function
  setmatrix <- function(mat) m <<- mat
  ## Get Matrix Function
  getmatrix <- function() m
  ## Converting functions into variable
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## First try to get the cache matrix 
## If cache matrix is not there then cal the inverse matrix
## Store it as cache Memory

cacheSolve <- function(x, ...) {
  ## Get the input from getmatrix Function
  m <- x$getmatrix()
  ## If setmatrix is not NULL then run this
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  ## Get the matrix from get Function
  data <- x$get()
  ## Calculate the inverse of data matrix
  m <- solve(data)
  ## Save the inverse matrix as cache
  x$setmatrix(m)
  m
  ## Return a matrix that is the inverse of 'x'
}
