## The aim of this 2 functions is to calculate inverse of 
## an inversible matrix and store result in cache if
## the process have already been calculated

## this function create list of function
## to set the value of the vector
## to get the value of the vector
## to set the value of the inverse
## to get the value of the inverse

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


## This function calculate the inverse of the matrix.
## it first checks if the inverse has already been calculated

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
