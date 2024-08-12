Algoritmo sin_titulo
	Escribir "Ingrese 3 valores numéricos"
	Leer a
	Leer b
	Leer c
	Si a=b y a=c y b=c Entonces
		Escribir "No se puede ingresar valores repetidos"
		Repetir
			Escribir "Ingrese 3 valores numéricos"
			Leer a
			Leer b
			Leer c
		Hasta Que (a<>b) o (b<>c) o (a<>c)
	FinSi
	Si (a>b) y (a>c) Entonces
		Escribir a," es el mayor"
	Sino 
		Si (b > a) y (b > c) Entonces
			Escribir b," es el mayor"
	Sino
		Si (c > a) y (c > b) Entonces
			Escribir c," es el mayor"
	Sino
		Si a=b=c Entonces
			Escribir "No se puede ingresar valores repetidos"
			Fin si
		Fin si
	  Fin si
	FinSi
FinAlgoritmo
