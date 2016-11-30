## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        #Matrix Property
        matRix = NULL
        #Setting the Matrix(method)
        set <- function(y){
        ##<<- operator which can be used to assign a value to an object in an environment
        x <<- y
        invMat <<- NULL
        }
        ##Method to get Matrix
        get = function() {
                x
        }
        ##Method to set the Inverse of Matrix
        setInv <- function(inverse) {
                
                invMat <<- inverse
        }
        ##Method to get the Inverse of Matrix
        getInv <- function() {
                ##Returns the inverse
                invMat
        }
        ##Returning the list of methods
        list(set=set,get=get, setInv=setInv, getInv=getInv)

}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
                invMat <- x$getInv()
                ##Inverse Already Calculated
                if(!is.null(invMat)) {
                ##Returning inverse if already set
                        message("getting cached data")
                        return(invMat)
                }
                ## Matrix from object
                data <- x$get()
                
                invMat <- inverse(data, ...)
                ##Set inverse to the Object
                x$setInverse(invMat){
                        ##Return the Matrix
                        invMat
                }
                
        }
