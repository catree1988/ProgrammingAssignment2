## A pair of functions that cache the inverse of a matrix.

## This line is used to avoid the error : object 's' not found
s <<- NULL

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        s <<- solve(x)
        ox <<- x
        invisible(x)
}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated (and
## the matrix has not changed), then cacheSolve should retrieve the inverse 
## from the cache.

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        if(!is.null(s) && x == ox) {
                message("getting cached data")
                return(s)
                }
        s <<- solve(x)
        ox <<- x
        s
}
