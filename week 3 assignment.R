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
cacheSolve <- function(x, ...){
  m <- x$getmsolve()
  if(!is.null(m)){
    message("getting cached data")
  }
  data <- x$get()
  y <- matrix(1,nrow=nrow(data), ncol = ncol(data))
  m <- solve(data,y)
}