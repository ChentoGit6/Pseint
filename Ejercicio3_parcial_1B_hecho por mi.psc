Algoritmo sin_titulo
	/// Uno de los objetivos del videojuego multijugador Among Us es identificar a los impostores de la nave. 
	//// Para ello, en cualquier momento cada uno de los N tripulantes puede llamar a todos los dem�s a una reuni�n. 
	/// En la misma, los tripulantes votan de forma ordenada (desde el tripulante 1 hasta el tripulante N) a alg�n otro como impostor. 
	/// El tripulante con m�s votos, si no hay empate, es expulsado de la nave. 
	/// En caso de empate, ning�n tripulante es expulsado. 
	/// Escriba un programa para llevar a cabo la votaci�n.  
	/// El programa debe leer primero el n�mero de tripulantes N, y luego los votos de cada tripulante. 
	/// Finalmente, la salida del programa debe ser el n�mero del jugador expulsado, o un mensaje alusivo si ning�n jugador 
	/// fue expulsado por darse un empate en la votaci�n.
	
	Escribir "Ingrese el nro de tripulantes"
	Leer N
	Dimension trip[N]
	Para i<-1 Hasta N Hacer
		trip[i] <- 0
	FinPara
	
	Para i<-1 hasta N Hacer
		Escribir "Ingrese a quien vota el tripulante ",i
		Leer codtrip
		trip[codtrip] <- trip[codtrip] + 1
	FinPara
	mayorvoto1<-0; trip1<-0
	mayorvoto2<-0; trip2<-0
	Para i<-1 hasta N Hacer
		Si trip[i] >= mayorvoto1 Entonces
			mayorvoto2 <- mayorvoto1
			mayorvoto1 <- trip[i]
			trip2<-trip1
			trip1<-i
		SiNo
			Si trip[i] > mayorvoto2 Entonces
				mayorvoto2 <- trip[i]
				trip2<-i
			FinSi
		FinSi
	FinPara
	Si mayorvoto1 > mayorvoto2 Entonces
		Escribir "El tripulante ",trip1," ser� expulsado"
	Sino 
		Escribir "Hay empate, nadie ser� expulsado"
	FinSi
FinAlgoritmo
