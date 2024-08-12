Algoritmo sin_titulo
	Escribir "tu fecha de nacimiento"
	Leer número 
	Día <- número mod 100
	Mes <- trunc((número mod 10000)/100)
	Año <- trunc(número / 10000)
	Escribir Día, "/", Mes, "/", Año
FinAlgoritmo
