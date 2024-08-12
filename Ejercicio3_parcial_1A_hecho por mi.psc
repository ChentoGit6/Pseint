Algoritmo sin_titulo
	Dimension bingo[3,10] /// 10 columnas porque la ultima es para el recuento
	Para fila<-1 hasta 3 Hacer
		Para colu<-1 hasta 10 Hacer
			Leer bingo[fila,colu]
		FinPara
		bingo[fila,10] <- 0 /// ponemos la columna 10 en 0 para el recuento
	FinPara
	
	terminado <- Falso
	Mientras terminado = Falso Hacer
		Leer nrolocutor
		Para fila<-1 hasta 3 Hacer
			Para colu<-1 hasta 10 Hacer
				Si bingo[fila,colu] = nrolocutor Entonces
					bingo[fila,10] <- bingo[fila,10] + 1
				FinSi
				Si bingo[fila,10] = 9 Entonces
					Escribir "LINEA!!!"
				FinSi
			FinPara
		FinPara
		Si bingo[1,10]=9 y bingo[2,10]=9 y bingo[3,10]=9 Entonces
			Escribir "BINGO!!!"
			terminado <- verdadero
		FinSi
	FinMientras
FinAlgoritmo
