## Put comments here that give an overall description of what your
## functions do
## MY 2 FUNCTIONS ARE USED TO AUTOMATE AND COMPUTE MATRIX INVERSES.

## Write a short comment describing this function.
## THIS FUNCTION IS USED TO CACHE MATRIX INVERSIONS BY SETTING THE MATRIX, RETRIEVING THE MATRIX, SETTING THE INVERSE, AND GETTTING THE INVERSE

makeCacheMatrix <- function (x=matrix()){
  i = NULL
  set <- function(y){ # setting the value of the matrix
    x<<-y
    inverser = NULL
    
  }
  
  get <- function () x # getting/retrieving the matrix
  setInverse <- function(inverse) i<<- inverse #setting the inverse
  getInverse <- function() i #getting its inverse
  list(set=set, get = get, setInverse = setInverse, getInverse= getInverse)
  
  
}


## Write a short comment describing this function
## THIS FUNCTION IS USED TO COMPUTE THE SPECIAL/SQUARE MATRIX, AND ALSO TO UTILIZE THE CACHE FUNCTION MADE ABOVE.

cacheSolve <- function (x, ...){
  i<-x$getInverse()
  if(!is.null(i)){ #if inverse has already been calculated
    message("getting cached data")
    return (i)
  }
  
  answer<- x$get()
  i<- solve(answer, ...) #calculating square matrix
  x$setInverse(i)
  i #returning the last object
  
  
}
