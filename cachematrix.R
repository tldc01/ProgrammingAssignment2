## first function stores inverse of a square matrix
## second function generates and displays the inverse of a square matrix

## this function stores the values in a list

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv <- function(solve) m <<- solve
    getinv<- function() m
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## this function runs the solve function to calculate the inverse of a square matrixk


cacheSolve <- function(x, ...) {
    m <- x$getinv()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinv(m)
    m
    
}
