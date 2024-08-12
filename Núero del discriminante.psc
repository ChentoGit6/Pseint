Algoritmo sin_titulo
	Leer a,b,c; //ax*ax+bx+c=0
	dis <- b*b-4*a*c;
	Si (dis>0) Entonces
		Escribir "Raíces reales distintas"
	Sino Si dis=0 Entonces
			Escribir "Raíces reales e iguales"
		Sino 
			Escribir "Raíces complejas"
			FinSi
	FinSi
FinAlgoritmo
