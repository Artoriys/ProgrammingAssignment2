## Put comments here that give an overall description of what your
## functions do

## This function Function makeCacheMatrix gets a matrix as an input, set the value of the matrix,
#get the value of the matrix, set the inverse Matrix and get the inverse Matrix. The matrix object
#can cache its own object.

makeCacheMatrix <- function(x) {
  
  m <- NULL
 set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setMatrix <- function(mat) m <<- mat
  getMatrix <- function() m
  list( set = set, get = get,
       setMatrix = setMatrix,
       getMatrix = getMatrix)

}

## The function cacheSolve takes the output of the previous matrix makeCacheMatrix(matrix) as an 
# input and checks inverse matrix from makeCacheMatrix(matrix) has any value in it or not.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getMatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setMatrix(m)
  m
  
}
