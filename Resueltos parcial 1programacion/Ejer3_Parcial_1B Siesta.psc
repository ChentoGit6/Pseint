Algoritmo Ejer3_Parcial_1B
	/// Uno de los objetivos del videojuego multijugador Among Us es identificar a los impostores de la nave. 
	//// Para ello, en cualquier momento cada uno de los N tripulantes puede llamar a todos los demás a una reunión. 
	/// En la misma, los tripulantes votan de forma ordenada (desde el tripulante 1 hasta el tripulante N) a algún otro como impostor. 
	/// El tripulante con más votos, si no hay empate, es expulsado de la nave. 
	/// En caso de empate, ningún tripulante es expulsado. 
	/// Escriba un programa para llevar a cabo la votación.  
	/// El programa debe leer primero el número de tripulantes N, y luego los votos de cada tripulante. 
	/// Finalmente, la salida del programa debe ser el número del jugador expulsado, o un mensaje alusivo si ningún jugador 
	/// fue expulsado por darse un empate en la votación.
	
	Escribir "Ingrese cantidad de tripulantes "
	Leer N
	Dimension VotosTripulantes(N)
	
	/// Poner todo en 0
	Para i = 1 Hasta N Hacer 
		VotosTripulantes[i] = 0
	FinPara
	
	Para i = 1 Hasta N Hacer 
		Escribir "Ingrese a quién vota el tripulante ",i
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
		Escribir "El tipulante ",CodTrip1," será expulsado"
	Sino 
		Escribir "Empate, nadie será expulsado"
	FinSi
	
FinAlgoritmo
