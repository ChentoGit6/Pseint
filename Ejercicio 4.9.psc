Algoritmo sin_titulo
	Dimension a[4,10]
	
	suma<-0
	Para i<-1 hasta 4 hacer
		Para j<-1 hasta 10 Hacer
			a[i,j]<-azar(100)
		FinPara
	FinPara
	
	Para i<-1 hasta 10 Hacer
		Para j<-1 hasta 4 Hacer
			suma<-suma+a[j,i]
			
		FinPara
		Escribir "Se vendió ", suma, " del producto ", i
		suma <- 0
	FinPara
	
FinAlgoritmo
