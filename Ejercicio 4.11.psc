Algoritmo sin_titulo
	Dimension m[3,6]
	Para a<-1 hasta 6 Hacer
		Para t<-1 hasta 3 Hacer
			m[t,a]<-0
		FinPara
	FinPara
	Escribir "Ingresa el número de arquitecto (para acabar la carga de datos de arquitecto, inserte un 0)"
	Leer a
	Mientras a<>0 Hacer
		Escribir "Ingresa el tipo de contrucción y la cantidad de m2 que realizó"
		Leer t, m2
		m[t,a]<-m[t,a]+m2
		Escribir "Ingresa el número de arquitecto"
		Leer a
	FinMientras
	
	Para a<-1 hasta 6 Hacer
      Escribir "El arquitecto ", a, " construyó:"
		Para t<-1 hasta 3 Hacer
			Escribir " ", m[t,a], " m2 del tipo ", t
		FinPara
	FinPara
	total<-0
	Para a<-1 hasta 6 Hacer
		Para t<-1 hasta 3 hacer
			total<-total + m[t,a]
		FinPara
	FinPara
	Escribir ""
	Escribir "El total en m2 proyectado por la empresa computando todos los tipos es:", total
FinAlgoritmo
