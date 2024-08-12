Algoritmo sin_titulo
	nroazar <- Aleatorio(1,100)
	contintentos <- 0
	Repetir
		Escribir "Ingrese un número"
		Leer nro
		contintentos <- contintentos + 1
		Si nro > nroazar Entonces
			Escribir "Muy alto"
		FinSi
		Si nro < nroazar Entonces
			Escribir "Muy bajo"
		FinSi
		Si nro = nroazar Entonces
			Escribir "Adivinaste!!!, acertaste en ",contintentos," intentos"
			contintentos <- 7
		FinSi
	Hasta Que contintentos = 7
	Si nro <> nroazar Entonces
		Escribir "Fallaste!!!, el número era ",nroazar
	FinSi
FinAlgoritmo
