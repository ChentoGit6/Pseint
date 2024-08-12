Algoritmo sin_titulo
	/// Uno de los objetivos del videojuego multijugador Among Us es identificar a los impostores de la nave. 
	//// Para ello, en cualquier momento cada uno de los N tripulantes puede llamar a todos los demás a una reunión. 
	/// En la misma, los tripulantes votan de forma ordenada (desde el tripulante 1 hasta el tripulante N) a algún otro como impostor. 
	/// El tripulante con más votos, si no hay empate, es expulsado de la nave. 
	/// En caso de empate, ningún tripulante es expulsado. 
	/// Escriba un programa para llevar a cabo la votación.  
	/// El programa debe leer primero el número de tripulantes N, y luego los votos de cada tripulante. 
	/// Finalmente, la salida del programa debe ser el número del jugador expulsado, o un mensaje alusivo si ningún jugador 
	/// fue expulsado por darse un empate en la votación.
	
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
		Escribir "El tripulante ",trip1," será expulsado"
	Sino 
		Escribir "Hay empate, nadie será expulsado"
	FinSi
FinAlgoritmo
