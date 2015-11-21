## Put comments here that give an overall description of what your
## functions do

## The following function creates the special vector of function to: get/set the matrix x
## and to get/set the inverse of the matrix x


makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## The following function check if the inverse of the matrix x is already calculated in i, if it is not
## return the inverse i, if it is print a message and return the cached value i 

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data)
    x$setinverse(i)
    i
}
