//Escriba un programa que permita ingresar una lista de 30 nombres y los guarde en un arreglo. El programa
//debe luego mostrar la lista nuevamente.

Algoritmo sin_titulo
	Escribir "Cuantos nombres desea ingresar?"
	Leer n
	Dimension a[n]
	
	Para i<-1 hasta n Hacer
		Escribir "Nombre ", i, ":"
		Leer a[i]
	FinPara
	
	Escribir "Lista de nombres:"
	
	Para i<-1 hasta n Hacer
		Escribir a[i]
	FinPara
	
FinAlgoritmo
