Algoritmo sin_titulo
	Escribir "Ingrese los tres lados de un tri�ngulo rect�ngulo"
	Leer c1,c2,c3
	Si c1>c2 y c1>c3 Entonces
		mayor <- c1
	SiNo
		Si c2>c1 y c2>c3 Entonces
			mayor <- c2
		Sino
			mayor <- c3
		FinSi
	FinSi
	Si c1^2 + c2^2 + c3^2 - mayor^2=mayor^2  Entonces
		Escribir "Es rect�ngulo"
		A <- ((c1 * c2 * c3 / mayor)/2)
		Escribir "El �rea del tri�ngulo rectangulo es ", A
	Sino
		Escribir "No es rect�ngulo"
	FinSi
FinAlgoritmo
