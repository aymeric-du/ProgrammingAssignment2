## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        resu <- NULL
        set <- function(y) {
                x <<- y
                resu <<- NULL
        }
        get <- function() x
        setinv <- function(inv) resu <<- inv
        getinv <- function() resu
        list(set = set, get = get,
             setinv = setinv ,
             getinv = getinv )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	resu <- x$getinv()	
	
      if(!is.null(resu)) {
      	message("getting cached data")
            return(resu)
      }

	data <- x$get()
      resu <- solve(data)
      x$setinv(resu)
      resu
}
