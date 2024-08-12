Algoritmo sin_titulo
	c <- 0; sum <- 0;
	Mientras (c<6) Hacer
		Escribir "Nota", c+1,"=" Sin Saltar
		Leer Nota
		Mientras (Nota<1) o (Nota>100) Hacer
			Escribir "Error. Las notas estan en rango {1..100}"
			Escribir "Nota", c+1,"=" Sin Saltar
			Leer Nota
		FinMientras
		c <- c+1;
		sum <- sum+Nota;
	FinMientras
	prom<- sum/6;
	Escribir "Promedio=", prom;
 FinAlgoritmo
