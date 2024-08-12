Algoritmo sin_titulo
	
	dimension m[50,8]
	/// Inicializo toda la matriz en cero
	Para alu<-1 hasta 50 Hacer
		para und<-1 hasta 8 Hacer
			m[alu,und]<-0
		FinPara
	FinPara
	/// Leo los  datos 
	Leer alu
	Mientras alu <> 0 hacer 
		Leer und
		m[alu,und] <- m[alu,und] + 1
		Leer alu
	FinMientras
	/// Busqueda de los dos alumnos que más ejercicios resolvieron
	ejerc1<-0; alu1<-0
	ejerc2<-0; alu2<-0
	Para alu<-1 hasta 50 hacer
		suma<-0
		Para und<-1 hasta 8 hacer 
			suma <- suma + m[alu,und]
			Si suma > ejerc1 Entonces
				ejerc1 <- suma
				ejerc2 <- ejerc1
				alu1 <- alu
				alu2 <- alu1
			SiNo
				Si suma > ejerc2 Entonces
					ejerc2 <- suma
					alu2 <- alu
				FinSi
			FinSi
		FinPara
	FinPara
	Escribir "El 1er alumno que más ejercicios realizó fue ",alu1," con ",ejerc1," ejercicios resueltos"
	Escribir "El 2do alumno que más ejercicios realizó fue ",alu2," con ",ejerc2," ejercicios resueltos"
	/// Cuantos alumnos no resolvieron ningún ejercicio de cierta unidad que elija el usuario
	Leer und
	contalu <- 0
	Para alu<-1 hasta 50 Hacer
		Si m[alu,und] = 0 Entonces
			contalu <- contalu + 1
		FinSi
	FinPara
	Escribir contalu, " no resolvieron ningún ejercicio de la unidad ",und
	
	/// El promedio de la cantidad de ejercicios resuletos por cada unidad
	Para und<-1 hasta 8 Hacer
		sumaejerc <- 0
		Para alu<-1 hasta 50 Hacer
			sumaejerc <- sumaejerc + m[alu,und]
		FinPara
		promedio <- sumaejerc/50
		Escribir "El promedio de la cantidad de ejercicios resueltos de la unidad ",und," es ",promedio
	FinPara
FinAlgoritmo
