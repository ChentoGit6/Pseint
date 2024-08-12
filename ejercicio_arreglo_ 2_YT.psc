Algoritmo sin_titulo
	tamanio<-5
	
	Dimension a1[tamanio]	
	Dimension a2[tamanio]
	Dimension a3[tamanio]
	
	Para i<-1 hasta tamanio hacer 
	    Escribir "Introduce el valor del arreglo 1 en la posición ", i
		Leer a1[i]
		
		Escribir "Introduce el valor del arreglo 2 en la posición ", i
		Leer a2[i]
		
		a3[i]<-a1[i]+a2[i]
		
	FinPara
	
	Para i<-1 hasta tamanio hacer
		Escribir a1[i], " + ",a2[i]," = ",a3[i]
	FinPara
	
FinAlgoritmo
