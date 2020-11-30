makecacheMatrix <- function(a=matrix()){
	i<- NULL
	set<- function(b){
		a<<-b
		i<<-NULL
	}
	get<-function()a
	setInverseOfMatrix<-function(inverse)
	i<<-inverse
	getInverseOfMatrix<-function()i
	list(set=set,get=get,setInverseOfMatrix=setInverseOfMatrix,getInverseOfMatrix=getInverseOfMatrix)
}

a=matrix(c(1,2,3,4,5,6,7,8,9),3,3)
makecacheMatrix (a)