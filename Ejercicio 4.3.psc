Algoritmo sin_titulo
	Escribir "Ingresa el n�mero de apellidos que va a guardar"
	Leer N
	Dimension A[N]
	Para i<-1 hasta N hacer
		Escribir "Ingrese el apellido ", i
		Leer A[i]
	FinPara
	
	aparece_garcia <- Falso
	
	Para i<-1 hasta N Hacer
		Si A[i]="Garcia" y aparece_garcia = Falso Entonces
			aparece_garcia <- Verdadero
			Escribir "Garcia esta en la posici�n ", i
		sino Escribir "No esta Garcia en la posici�n ", i
		FinSi
	FinPara
FinAlgoritmo
