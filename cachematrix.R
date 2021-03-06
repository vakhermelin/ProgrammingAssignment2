## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function below creates a list containing functions to 
##1. set the value of the matrix
##2. get the veluw of the matrix
##3. set the value of the inverse of the matrix
##3. get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
##This function returns the inverse of the matrix. It first checks if the inverse 
##has already been computed. If yes, it takes the result and skips the calculation. 
##If not, it computes the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting chaced data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)inv
    inv
}
