Algoritmo sin_titulo
	Escribir "tu fecha de nacimiento"
	Leer n�mero 
	D�a <- n�mero mod 100
	Mes <- trunc((n�mero mod 10000)/100)
	A�o <- trunc(n�mero / 10000)
	Escribir D�a, "/", Mes, "/", A�o
FinAlgoritmo
