Algoritmo sin_titulo
	
	Dimension a[4,10]
	Dimension precio[10]
	
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
		Escribir "Se vendi� ", suma, " del producto ", i
		suma <- 0
	FinPara
	
	sumap<-0
	total<-0
	mayorsuc<-0
	
	Para i<-1 hasta 10 Hacer
		precio[i]<-azar(100)
	FinPara
	
	Para i<-1 hasta 4 Hacer
		Para j<-1 hasta 10 hacer
		  sumap<-sumap + a[i,j]*precio[i]
	    Fin para
	    Escribir "La recaudaci�n de la sucurasl ", i, " es: ", sumap
		Si sumap>mayorsuc entonces 
			mayorsuc<-sumap 
			nro <- i
		FinSi
		total<- total + sumap
		sumap<-0
	FinPara
	
	Escribir "La sucursal que obtuvo la mayor recaudaci�n es la ", nro, " con un total de: ", mayorsuc
	Escribir "El valor total que recaud� la empresa es: ", total
	
FinAlgoritmo
