Algoritmo Ejer1_Parcial_1A
	/// Escriba un programa que simule el juego de computadora siguiente: el programa debe inicialmente  
	/// generar un número al azar, entre 1 y 100*. Luego, el usuario del programa tiene 7 intentos para 
	/// adivinar qué número es. Si el intento es incorrecto, debe informar si fue "muy alto" o "muy bajo". 
	/// Finalmente, la salida del programa debe ser "Ganaste, acertaste en N intentos" o "Perdiste, el número era X" 
	/// según cada caso. *La función azar(X) genera enteros aleatorios enteros entre 0 y X-1.
	/// 
	NroAdivinar <- Aleatorio(0,100)
	
	Intentos <- 0
	Repetir 
		Intentos <- Intentos + 1
		Escribir "Ingrese un número"
		Leer Nro
		Si Nro > NroAdivinar Entonces 
			Escribir "Número alto"
		FinSi
		Si Nro < NroAdivinar Entonces 
			Escribir "Número bajo"
		FinSi
		Si Nro = NroAdivinar Entonces 
			Escribir "Adivinó ¡¡¡ a los ",Intentos," intentos"
			Intentos <- 7 /// Con esto fuerzo la salida
		FinSi
	Hasta Que Intentos = 7
	Si Nro <> NroAdivinar Entonces 
		Escribir "Perdió¡¡¡¡, el nùmero era ", NroAdivinar /// terminaron los intentos y no adivinó.
	FinSi
FinAlgoritmo
