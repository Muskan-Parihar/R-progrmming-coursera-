##makeCcacheMatrix creates a matrix that can cache its own inverse
makecacheMatrix <- function(a=matrix()){
	i<- NULL
##set the matrix
	set<- function(b){
		a<<-b
		i<<-NULL
	}
##get the matrix
	get<-function()a
	setInverseOfMatrix<-function(inverse)
	i<<-inverse
	getInverseOfMatrix<-function()i
	list(set=set,get=get,setInverseOfMatrix=setInverseOfMatrix,getInverseOfMatrix=getInverseOfMatrix)
}

##cacheSolve will commute the inverse of matrix returned by makeCacheMatrix
cacheSolve <- function(a,...){
	i<- a$getInverseOfMatrix()
	if(!is.null(i)){
	message("getting cached data")
	return(i)
	}
	matrix<-x$get()
	i<-solve(matrix,...)
	a$setInverseOfMatrix(i)
	i
}
