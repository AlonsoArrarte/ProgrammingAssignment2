## Functions to store matrix with it's inverse cached 

## Creates a 'special' matrix which can hold it's cahced inversed as an attribute  
makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y = matrix()) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInv <- function(inv) m <<- inv
  getInv <- function() m
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
  
}

## takes in a 'special' matrix and returns the inversed.
## First checks if inverse has already been cached
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  
  m <- x$getInv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  m <- solve(x$get()) 
 
}
