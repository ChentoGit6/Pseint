Algoritmo sin_titulo
	Escribir "Ingrese los tres lados de un triángulo rectángulo"
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
		Escribir "Es rectángulo"
		A <- ((c1 * c2 * c3 / mayor)/2)
		Escribir "El área del triángulo rectangulo es ", A
	Sino
		Escribir "No es rectángulo"
	FinSi
FinAlgoritmo
