Algoritmo sin_titulo
	/// Una universidad quiere analizar el crecimiento en el n�mero de ingresantes a lo largo de 
	/// los �ltimos 10 a�os. En ella se dictan 7 carreras diferentes.[a] Escriba un programa que permita 
    /// ingresar 10x7 ternas de datos formadas por: a�o (2015 a 2024), nro de carrera (1 a 7) y cantidad 
    /// de ingresantes. El programa debe luego calcular y mostrar: 
	/// [b] Por cada carrera, en qu� a�os baj� el n�mero de ingresantes respecto al anterior. 
	/// [c] La carrera que acumul� menor n�mero de ingresantes en total (a lo largo de los 10 a�os). 
	/// [d] Para un a�o que ingrese el usuario, cu�l es el promedio de alumnos por carrera, 
	///  y cu�l carrera tuvo una cantidad de ingresantes m�s alejada de ese promedio. 
	/// [e] Cu�l fue el par a�o-carrera que menos ingresantes tuvo.
	
	Dimension u[10,7]
	Para a<-1 hasta 10 Hacer
		Escribir "Ingrese el a�o"
		Leer a�o
		cola�o <- a�o-2014
		Para c<-1 hasta 7 Hacer
			Escribir "Ingrese nro de carrera (1 a 7) y cantidad de ingresantes de la misma para el a�o ",cola�o," (el a�o que ingres� se le resta 2014)"
			Leer carrera, ingresante
			u[cola�o,carrera]<-ingresante
		FinPara
	FinPara
	/// [b] Por cada carrera, en qu� a�os baj� el n�mero de ingresantes respecto al anterior.
	Para carrera<-1 hasta 7 Hacer
		Para a�o<-2 hasta 10 Hacer
			Si u[a�o,carrera] < u[a�o-1,carrera] Entonces
				Escribir "En el a�o ",a�o," baj� el n�mero de ingresantes respecto del anterior de la carrera ",carrera
			FinSi
		FinPara
	FinPara
	/// [c] La carrera que acumul� menor n�mero de ingresantes en total (a lo largo de los 10 a�os). 
	menoring <- 99999999
	Para carrera<-1 hasta 7 Hacer
		sumaing <- 0
		Para a�o<-1 hasta 10 hacer
			sumaing <- sumaing + u[a�o,carrera]
		FinPara
		Si sumaing < menoring Entonces
			menoring <- sumaing
			carreramenor <- carrera
		FinSi
	FinPara
	Escribir "La carrera ",carreramenor," acumul� menor n�mero de ingresantes, con ",menoring," ingresantes"
	/// [d] Para un a�o que ingrese el usuario, cu�l es el promedio de alumnos por carrera, 
	///  y cu�l carrera tuvo una cantidad de ingresantes m�s alejada de ese promedio.
	Escribir "Ingrese a�o"
	Leer a�oelegido
	suma<-0
	Para carrera<-1 hasta 7 Hacer
		suma <- suma + u[carrera,a�oelegido-2014]
	FinPara
	Promedio <- suma / 7 
	MayorDiferencia <- 0
	Para Carrera <- 1 Hasta 7 Hacer
		Diferencia <- Abs(Promedio - u[carrera,a�oelegido-2014])
		Si Diferencia > MayorDiferencia Entonces 
			MayorDiferencia <- Diferencia
			CarreraMayorDif <- Carrera
		FinSi
	FinPara
	Escribir "El promedio de ingresantes por carrera del anio ",a�oelegido," fu� ",Promedio
	Escribir "la carrera ",CarreraMayorDif," fu� la mas alejada del promedio"
	/// [e] Cu�l fue el par a�o-carrera que menos ingresantes tuvo.
	menoring <- 9999999
	Para a�o<-1 hasta 10 Hacer
		Para carrera<-1 hasta 7 Hacer
			Si u[a�o,carrera] < menoring Entonces
				menoring <- u[a�o,carrera]
				a <- a�o + 2014 
				c <- carrera
			FinSi
		FinPara
	FinPara
	Escribir "En el a�o ",a," con la carrera ",c," se dio el menor ingreso con ",menoring," ingresantes"
FinAlgoritmo
