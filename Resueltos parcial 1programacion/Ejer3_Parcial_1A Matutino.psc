Algoritmo Ejer3_Parcial_1A
	/// ¡Bingo! es un conocido juego de azar en el que cada jugador tiene una grilla de números*. 
	/// Cada cierto tiempo, un locutor recita un número y los jugadores deben tachar el número 
	/// de su grilla, si es que lo tienen en la misma. 
	/// Si resulta que un jugador tachó todos los números de alguna fila de su grilla, el mismo 
	/// debe gritar "¡Línea!". Si tachó todos los números de la grilla, debe gritar "¡Bingo!". 
	/// Implemente un programa en pseudocódigo que permita leer la grilla inicial de 3x9 de un 
	/// jugador, por filas. Luego, el programa debe leer los números anunciados por el locutor
	/// , hasta que el jugador logre tachar todos los números de su grilla. 
	/// El programa debe escribir "¡Línea!" cada vez que se complete una de las 3 líneas 
	/// (se tachen todos sus números) y "Bingo!" al finalizar (cuando se tachó todo el cartón). 
	/// *Las grillas en esta versión de ¡Bingo! tienen 3 filas y 9 columnas donde todas las 
	/// posiciones tienen un número diferente.
	
	Dimension Bingo(3,10)  /// 3 filas, 9 columnsa para los números del carton u la columna 10 para el recuento por fila (Linea)
	
	Para Fila = 1 Hasta 3 Hacer 
		Para Col = 1 hasta 10 Hacer 
			Leer Bingo[Fila,Col]
			/// Bingo[Fila,Col] = Aleatorio(0,100)  /// por si quieren probarlo
		FinPara
		Bingo[Fila,10] = 0 /// para recuento por fila
	FinPara
	
	Terminado = Falso
	Mientras Terminado = Falso Hacer 
		Leer NroSorteado  /// Número que canta el locutor
		/// Buscar en la matriz 
		Para Fila = 1 Hasta 3 Hacer 
			Para Col = 1 hasta 10 Hacer 
				Si Bingo[Fila,Col] = NroSorteado Entonces 
					Bingo[Fila,10] = Bingo[Fila,10] + 1 /// sumo 1 al recuento de aciertos de la fila
					Si Bingo[Fila,10] = 9 Entonces 
						Escribir "LINEA ¡¡¡¡¡"
					FinSi
				FinSi
			FinPara
		FinPara
		Si Bingo[1,10] = 9 y  Bingo[2,10] = 9 y Bingo[3,10] = 9 Entonces 
			Escribir "BINGO ¡¡¡¡¡"
			Terminado = Verdadero  /// Para cortar el mientras
		FinSi
	FinMientras
	
FinAlgoritmo
