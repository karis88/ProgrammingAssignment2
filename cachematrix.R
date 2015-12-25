## I forked and clonned the reppository assignment 2
## I oppened it in my terminal and modified it on this way

## The function below takes a square matrix x as a function and returns
## the inverse of that matrix on this way: (first, sets the value of the matrix
## then, gets its value, sets the value of inverse of the matrix
## and gets the value of inverse of the matrix)

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## This other function returns a matrix that is the inverse of a square matrix x.
## This function assumes that matrix x is invertible.
## It first checks if the inverse has already been computed. If so, it gets the 
## result and skips the computation. If not, it computes the inverse, sets the 
## value in the cache via setinverse function.

cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
        

