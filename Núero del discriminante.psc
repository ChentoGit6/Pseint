Algoritmo sin_titulo
	Leer a,b,c; //ax*ax+bx+c=0
	dis <- b*b-4*a*c;
	Si (dis>0) Entonces
		Escribir "Ra�ces reales distintas"
	Sino Si dis=0 Entonces
			Escribir "Ra�ces reales e iguales"
		Sino 
			Escribir "Ra�ces complejas"
			FinSi
	FinSi
FinAlgoritmo
