## Put comments here that give an overall description of what your functions do
## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
    origMat<-x    ##assigns the incoming or default 1 by 1 matrix to origMat
    print("Original")
    print(origMat)
    invMat<-cacheSolve(origMat)  ##Calls cacheSolve passing the original matrix
}

## Write a short comment describing this function
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    if(exists("invMat")) {   ## Check to see if invMat already exists
        print("cached inverted")
        print(invMat)
        invMat                   ## if it does, Return
    }    else {                   ## if it doesn't
        invMat<- solve(x)        ## solve for the inverse of the matrix
        print("calcualted inverted")
        print(invMat)
        invMat                    ## and return
    }
}