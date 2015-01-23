## Put comments here that give an overall description of what your
## functions do

## cache the inverse of a matrix in the environment using the <<- operator

makeCacheMatrix <- function(x = matrix()) {
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) m <<- solve
      getinverse <- function() m
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}


## If the inverse is cached retrieve it, if not generate it

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
      m <- x["getinverse"]
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x["get"]
      m <- solve(data, ...)
      x["setinverse"]<--m
      m
}
