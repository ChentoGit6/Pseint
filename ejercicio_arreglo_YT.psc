Algoritmo ejercicio_arreglo_YT
	N<-10
	Dimension a[N]
	suma<-0
	media<-0
	Para i<-1 hasta N-1 Hacer
		a[i]<-i
		suma<-suma+a[i]
		Escribir a[i]
	FinPara
	Escribir "La suma es ", suma
	media<-suma/N
	Escribir "La media es ", media
FinAlgoritmo
