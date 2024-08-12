Algoritmo sin_titulo
	Escribir "Binvenidos"
	Escribir "Ingrese el número de postulantes que quieren tener la beca:"
	Leer cantestudiantes
	cantlecturas<-0
	Escribir "Ingrese el promedio de los estudiantes:"
	
	Repetir
		Leer promedio
		cantlecturas<-cantlecturas + 1
	Hasta Que cantlecturas=cantestudiantes
	
	Escribir "Adiós"
FinAlgoritmo
