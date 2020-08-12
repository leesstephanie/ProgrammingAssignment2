## Put comments here that give an overall description of what your
## functions do

## This is a function to make a special matrix. 
## This function does several things, such as:
## set the matrix, get the matrix, set the inverse, and get the inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinv <- function(inv) i <<- inv
    getinv <- function() i
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## The following function is to calculate the inverse of the matrix
## which has been set in the previous function

cacheSolve <- function(x, ...) {
    i <- x$getinv()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinv(i)
    i ## Return a matrix that is the inverse of 'x'
}
