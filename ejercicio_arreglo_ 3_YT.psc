Algoritmo sin_titulo
	
	tamanio<-5
	
	Dimension a[tamanio]
	
	a[1]<-2
	a[2]<-5
	a[3]<-4
	a[4]<-3
	a[5]<-2
	
	Escribir "Inserta elemento a buscar"
	Leer numerobuscado
	
	encontrado <- falso
	
	Para i<-1 hasta tamanio Hacer
		Si numerobuscado = a[i] Entonces
			Escribir "Se a encontrado el numero ",numerobuscado, " en la posición: ", i
			encontrado<-verdadero
		FinSi
	FinPara
	
	Si encontrado=falso Entonces
		Escribir "No se a encontrado ningun elemento"
	FinSi
FinAlgoritmo
