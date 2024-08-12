Algoritmo Ejer1_Parcial_1A
	/// Escriba un programa que simule el juego de computadora siguiente: el programa debe inicialmente  
	/// generar un n�mero al azar, entre 1 y 100*. Luego, el usuario del programa tiene 7 intentos para 
	/// adivinar qu� n�mero es. Si el intento es incorrecto, debe informar si fue "muy alto" o "muy bajo". 
	/// Finalmente, la salida del programa debe ser "Ganaste, acertaste en N intentos" o "Perdiste, el n�mero era X" 
	/// seg�n cada caso. *La funci�n azar(X) genera enteros aleatorios enteros entre 0 y X-1.
	/// 
	NroAdivinar <- Aleatorio(0,100)
	
	Intentos <- 0
	Repetir 
		Intentos <- Intentos + 1
		Escribir "Ingrese un n�mero"
		Leer Nro
		Si Nro > NroAdivinar Entonces 
			Escribir "N�mero alto"
		FinSi
		Si Nro < NroAdivinar Entonces 
			Escribir "N�mero bajo"
		FinSi
		Si Nro = NroAdivinar Entonces 
			Escribir "Adivin� ��� a los ",Intentos," intentos"
			Intentos <- 7 /// Con esto fuerzo la salida
		FinSi
	Hasta Que Intentos = 7
	Si Nro <> NroAdivinar Entonces 
		Escribir "Perdi󡡡�, el n�mero era ", NroAdivinar /// terminaron los intentos y no adivin�.
	FinSi
FinAlgoritmo
