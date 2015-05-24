## 1.makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(m,r,c) {
      m1 <- NULL
      m <<- matrix(m,nrow=r,ncol=c) 
      m1 <<- NULL

## 2.cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

    cacheSolve <- function() {
        if (is.null(m1)) {
            m1 <<- solve(m)
            print(m)
        }
        m1
    }
        ## Return a matrix that is the inverse of 'x'
        list(cacheSolve = cacheSolve)
}
