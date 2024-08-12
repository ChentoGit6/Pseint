Algoritmo sin_titulo
	//una empresa con 5 sucursales lo que vendio en los 12 eses del año
	Dimension a[5,13]
	Para f<-1 hasta 12 Hacer
		Para c<-1 hasta 12 hacer 
			Leer a[f,c]
		FinPara
	FinPara
	//indicar el total vendidio de las 5 sucursuales en los 12 meses del 2023
	Para f<-1 hasta 5 hacer
	   sumaf<-0
	   Para c<-1 hasta 12 Hacer
		   sumaf<-sumaf+a[f,c] //suma 12 elemntos de las 5 filas
	   FinPara
	   A[f,13]<-sumaf
	FinPara
	
    
FinAlgoritmo
