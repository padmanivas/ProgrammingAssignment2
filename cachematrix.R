##fnction use to create a matrix with new environment<<

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x

   ## inverse of the matrix is found using solve function

         setinverse <- function(solve) m <<- solve
        getinverse <- function() m

    ## returns a list containing the matrix and its inverse

        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

        
}



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m

}
