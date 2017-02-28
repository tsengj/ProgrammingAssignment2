## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix())
{
  return_matrix <- NULL #resets return_matrix
  set <- function(matrix_store)
  {
    x <<- matrix_store #caches matrix_store to x
    return_matrix <<- NULL #resets return_matrix          
  }
  get <- function() x
  set_inverse <- function(solve) return_matrix <<- solve #set set_inverse as function which caches solve into return_matrix 
  get_inverse <- function() return_matrix 
  list(set = set, get = get, 
       set_inverse = set_inverse, 
       get_inverse = get_inverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  matrix_store <- matrix_to_check$get_inverse()
  if(!is.null(matrix_store)) #checks if matrix store cache exist
  {#if doesn't, get cache
    message("Getting Cached Matrix")
    return(matrix_store)
  }
  data <- matrix_to_check$get()
  matrix_store <- solve(data, ...)
  matrix_to_check$set_inverse(matrix_store)
  matrix_store
}
