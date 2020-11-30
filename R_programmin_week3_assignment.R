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
