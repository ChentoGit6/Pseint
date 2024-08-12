//Escriba un programa que permita cargar los 50 datos de una matriz de 10x5, por fila. El programa debe luego
//informar primero los datos de las 3ra columna. Luego, los de la 4ta fila.

Algoritmo sin_titulo
	Dimension a[10,5]
	
	Para i<-1 hasta 10 hacer
		Para j<-1 hasta 5 hacer
			a[i,j]<-azar(100)
		FinPara
	FinPara
	
	Escribir "Datos de la 3ra columna: "
	Para i<-1 hasta 10 Hacer
		Para j<-3 hasta 3 Hacer
			Escribir a[i,j], " " Sin Saltar
		FinPara
	FinPara
	Escribir ""
	Escribir ""
	Escribir "Datos de la 4ta fila: "
	Para i<-4 hasta 4 Hacer
		Para j<-1 hasta 5 Hacer
			Escribir a[i,j], " " Sin Saltar
		FinPara
	FinPara
	
FinAlgoritmo
