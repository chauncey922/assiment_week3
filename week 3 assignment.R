## The following functions cashe the inverse of a matrix

## This function creates a special "matrix" object that:
### 1) set the value of the matrix 
### 2) get the value of the matrix
### 3) set the value of the inversed matrix &
### 4) get the value of the inversed matrix
makeCacheMatrix <- function(x = numeric()){
  m<-NULL
  set <- function(y){
    x <<- y
    m <<-NULL
  }
  get <- function()x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set=set, get= get, setsolve = setsolve, getsolve = getsolve)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated, then the cachesolve should retrieve the inverse 
## from the cache. Otherwise, it calculates the inverse of the matrix & sets the value of the 
## inversed matrix in the cache via the set_inv function
cacheSolve <- function(x, ...){
  m <- x$getmsolve()
  if(!is.null(m)){
    message("getting cached data")
  }
  data <- x$get()
  y <- matrix(1,nrow=nrow(data), ncol = ncol(data))
  m <- solve(data,y)
}