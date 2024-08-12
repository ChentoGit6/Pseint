Algoritmo sin_titulo
	Dimension modelo[3], cantidadtotal[3], cantidadcontado[3]
	
	Para i<-1 hasta 3 Hacer
		Escribir "Ingrese el nombre del modelo"
		Leer modelo[i]
		Escribir "Ingrese la cantidad total de ventas del modelo"
		Leer cantidadtotal[i]
		Escribir "Ingrese la cantidad total de ventas de contado del modelo"
		Leer cantidadcontado[i]
	FinPara
	
	Para i<-1 hasta 3 Hacer
		Escribir "El porcentaje de ventas de contado del modelo ",modelo[i]," es: ",(cantidadcontado[i]/cantidadtotal[i])*100,"%"
	FinPara
	
	mayorcontado<-0; mayortotal<-0
	Para i<-1 hasta 3 Hacer
		Si cantidadcontado[i]>mayorcontado o (cantidadcontado[i]=mayorcontado y cantidadtotal[i]<mayortotal) Entonces
			mayorcontado<-cantidadcontado[i]
		    mayortotal<-cantidadtotal[i]
			model<-modelo[i]
		FinSi
	FinPara
	Escribir "El modelo ",model," fue el que tuvo la mayor cantidad de ventas de contado (considerando si hay empate con otro modelo) con un total de ",mayorcontado
FinAlgoritmo
