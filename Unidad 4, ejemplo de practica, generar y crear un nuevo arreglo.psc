Algoritmo sin_titulo
	//generar un nuevo arreglo con datos al azar menores que 100
	//crear un nuevo arreglo con los datos de a mayores a 50
	Dimension a[20], nuevo[20]
	Para i<-1 hasta 20 Hacer
		a[i]<-azar(100)
		Escribir a[i], " " sinsaltar
	FinPara 
	k<-0
	Para i<-1 hasta 20 Hacer
		Si a[i]>50 Entonces
			k<-k+1
			nuevo[i]<-a[i]
		FinSi
	FinPara
	Escribir "";Escribir "Nuevo arreglo"
	Para i<-1 hasta k Hacer
		Escribir nuevo[i], " " sinsaltar
	FinPara
FinAlgoritmo
