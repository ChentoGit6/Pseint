//Escriba un programa que permita ingresar 30 número e informe el promedio de todos ellos.
Algoritmo sin_titulo
	Escribir "Ingresa 30 números(el número 31 tiene que ser el 0)"
	suma<-0
	Repetir
		Leer N
		suma<-suma+N
	Hasta Que N=0
	prom<-suma/30
	Escribir "El promedio de los 30 números es: ", prom
FinAlgoritmo
