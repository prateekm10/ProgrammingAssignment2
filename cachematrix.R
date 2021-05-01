## Put comments here that give an overall description of what your
## functions do

## Function 1

makeCacheMatrix <- function(x = matrix()) {  AK <- NULL
set <- function(y){
  x <<- y
  AK <<- NULL
}
get <- function()x
setInverse <- function(inverse) AK <<- inverse
getInverse <- function() AK 
list(set = set, get = get, 
     setInverse = setInverse, 
     getInverse = getInverse)

}


## Function 2

cacheSolve <- function(x, ...) {AK <- x$getInverse()
if(!is.null(AK)){
  message("getting cached data")
  return(AK)
}
mat <- x$get()
AK <- solve(mat,...)
x$setInverse(AK)
AK
        ## Return a matrix that is the inverse of 'x'
}

