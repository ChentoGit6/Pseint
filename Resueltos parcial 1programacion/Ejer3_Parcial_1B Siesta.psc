Algoritmo Ejer3_Parcial_1B
	/// Uno de los objetivos del videojuego multijugador Among Us es identificar a los impostores de la nave. 
	//// Para ello, en cualquier momento cada uno de los N tripulantes puede llamar a todos los dem�s a una reuni�n. 
	/// En la misma, los tripulantes votan de forma ordenada (desde el tripulante 1 hasta el tripulante N) a alg�n otro como impostor. 
	/// El tripulante con m�s votos, si no hay empate, es expulsado de la nave. 
	/// En caso de empate, ning�n tripulante es expulsado. 
	/// Escriba un programa para llevar a cabo la votaci�n.  
	/// El programa debe leer primero el n�mero de tripulantes N, y luego los votos de cada tripulante. 
	/// Finalmente, la salida del programa debe ser el n�mero del jugador expulsado, o un mensaje alusivo si ning�n jugador 
	/// fue expulsado por darse un empate en la votaci�n.
	
	Escribir "Ingrese cantidad de tripulantes "
	Leer N
	Dimension VotosTripulantes(N)
	
	/// Poner todo en 0
	Para i = 1 Hasta N Hacer 
		VotosTripulantes[i] = 0
	FinPara
	
	Para i = 1 Hasta N Hacer 
		Escribir "Ingrese a qui�n vota el tripulante ",i
		Leer CodTripulante 
		VotosTripulantes[CodTripulante] = VotosTripulantes[CodTripulante] + 1  /// le sumo 1 voto al tripulante votado
	FinPara
	
	/// Buscar Los dos mas votados
	MayVotos1 = 0;CodTrip1 = 0;MayVotos2 = 0;CodTrip2 = 0
	Para i = 1 Hasta N Hacer 
		Si VotosTripulantes[i] >= MayVotos1 Entonces 
			MayVotos2 = MayVotos1;CodTrip2 = CodTrip1
			MayVotos1 = VotosTripulantes[i];CodTrip1 = i
		SiNo
			Si VotosTripulantes[i] > MayVotos2 Entonces 
				MayVotos2 = VotosTripulantes[i];CodTrip2 = i
			FinSi
		FinSi
	FinPara
	Si MayVotos1 > MayVotos2 Entonces 
		Escribir "El tipulante ",CodTrip1," ser� expulsado"
	Sino 
		Escribir "Empate, nadie ser� expulsado"
	FinSi
	
FinAlgoritmo
