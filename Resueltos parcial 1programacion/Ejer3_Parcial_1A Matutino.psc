Algoritmo Ejer3_Parcial_1A
	/// �Bingo! es un conocido juego de azar en el que cada jugador tiene una grilla de n�meros*. 
	/// Cada cierto tiempo, un locutor recita un n�mero y los jugadores deben tachar el n�mero 
	/// de su grilla, si es que lo tienen en la misma. 
	/// Si resulta que un jugador tach� todos los n�meros de alguna fila de su grilla, el mismo 
	/// debe gritar "�L�nea!". Si tach� todos los n�meros de la grilla, debe gritar "�Bingo!". 
	/// Implemente un programa en pseudoc�digo que permita leer la grilla inicial de 3x9 de un 
	/// jugador, por filas. Luego, el programa debe leer los n�meros anunciados por el locutor
	/// , hasta que el jugador logre tachar todos los n�meros de su grilla. 
	/// El programa debe escribir "�L�nea!" cada vez que se complete una de las 3 l�neas 
	/// (se tachen todos sus n�meros) y "Bingo!" al finalizar (cuando se tach� todo el cart�n). 
	/// *Las grillas en esta versi�n de �Bingo! tienen 3 filas y 9 columnas donde todas las 
	/// posiciones tienen un n�mero diferente.
	
	Dimension Bingo(3,10)  /// 3 filas, 9 columnsa para los n�meros del carton u la columna 10 para el recuento por fila (Linea)
	
	Para Fila = 1 Hasta 3 Hacer 
		Para Col = 1 hasta 10 Hacer 
			Leer Bingo[Fila,Col]
			/// Bingo[Fila,Col] = Aleatorio(0,100)  /// por si quieren probarlo
		FinPara
		Bingo[Fila,10] = 0 /// para recuento por fila
	FinPara
	
	Terminado = Falso
	Mientras Terminado = Falso Hacer 
		Leer NroSorteado  /// N�mero que canta el locutor
		/// Buscar en la matriz 
		Para Fila = 1 Hasta 3 Hacer 
			Para Col = 1 hasta 10 Hacer 
				Si Bingo[Fila,Col] = NroSorteado Entonces 
					Bingo[Fila,10] = Bingo[Fila,10] + 1 /// sumo 1 al recuento de aciertos de la fila
					Si Bingo[Fila,10] = 9 Entonces 
						Escribir "LINEA �����"
					FinSi
				FinSi
			FinPara
		FinPara
		Si Bingo[1,10] = 9 y  Bingo[2,10] = 9 y Bingo[3,10] = 9 Entonces 
			Escribir "BINGO �����"
			Terminado = Verdadero  /// Para cortar el mientras
		FinSi
	FinMientras
	
FinAlgoritmo
