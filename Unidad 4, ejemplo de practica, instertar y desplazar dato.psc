Algoritmo sin_titulo
	Dimension a[11]
	Para i<-1 hasta 10 Hacer
		a[i]<-azar(100)
		Escribir a[i], " " sinsaltar
	FinPara 
	Escribir ""
	Escribir "nuevo dato: "; Leer dato
	Escribir "Posición: "; Leer pos
	
	Para j<-10 hasta pos con paso -1 Hacer
		a[j+1]<-a[j]
	FinPara
	Escribir "arreglo desplazado"
	Para i<-1 hasta 11 Hacer
		Escribir a[i], " " sinsaltar
	FinPara 
	Escribir ""
	a[pos]<-dato
	Escribir "arreglo insertado"
	Para i<-1 hasta 11 Hacer
		Escribir a[i], " " sinsaltar
	FinPara 
	Escribir ""
FinAlgoritmo
