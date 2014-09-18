## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I will create a function list that implements the
## needed functionality for the cache function to work.
## The get function gets the original data.
## The setSolve function sets the inverse of a matrix.
## The getSolve function gets the inverse of a matrix.
## The set function resets the cache to the new matrix.
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    
    get <- function() x
    setsolve <-m function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get,
            setsolve = setsolve,
            getsolve = getsolve)
    
}


## Write a short comment describing this function
## This function tries to fetch the cached result
## If there is a cached result it will be returned
## If not then the result will be calculated and
## cached.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setsolve(m)
        m
        
}
