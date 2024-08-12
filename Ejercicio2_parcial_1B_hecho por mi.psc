Algoritmo sin_titulo
	/// Una universidad quiere analizar el crecimiento en el número de ingresantes a lo largo de 
	/// los últimos 10 años. En ella se dictan 7 carreras diferentes.[a] Escriba un programa que permita 
    /// ingresar 10x7 ternas de datos formadas por: año (2015 a 2024), nro de carrera (1 a 7) y cantidad 
    /// de ingresantes. El programa debe luego calcular y mostrar: 
	/// [b] Por cada carrera, en qué años bajó el número de ingresantes respecto al anterior. 
	/// [c] La carrera que acumuló menor número de ingresantes en total (a lo largo de los 10 años). 
	/// [d] Para un año que ingrese el usuario, cuál es el promedio de alumnos por carrera, 
	///  y cuál carrera tuvo una cantidad de ingresantes más alejada de ese promedio. 
	/// [e] Cuál fue el par año-carrera que menos ingresantes tuvo.
	
	Dimension u[10,7]
	Para a<-1 hasta 10 Hacer
		Escribir "Ingrese el año"
		Leer año
		colaño <- año-2014
		Para c<-1 hasta 7 Hacer
			Escribir "Ingrese nro de carrera (1 a 7) y cantidad de ingresantes de la misma para el año ",colaño," (el año que ingresó se le resta 2014)"
			Leer carrera, ingresante
			u[colaño,carrera]<-ingresante
		FinPara
	FinPara
	/// [b] Por cada carrera, en qué años bajó el número de ingresantes respecto al anterior.
	Para carrera<-1 hasta 7 Hacer
		Para año<-2 hasta 10 Hacer
			Si u[año,carrera] < u[año-1,carrera] Entonces
				Escribir "En el año ",año," bajó el número de ingresantes respecto del anterior de la carrera ",carrera
			FinSi
		FinPara
	FinPara
	/// [c] La carrera que acumuló menor número de ingresantes en total (a lo largo de los 10 años). 
	menoring <- 99999999
	Para carrera<-1 hasta 7 Hacer
		sumaing <- 0
		Para año<-1 hasta 10 hacer
			sumaing <- sumaing + u[año,carrera]
		FinPara
		Si sumaing < menoring Entonces
			menoring <- sumaing
			carreramenor <- carrera
		FinSi
	FinPara
	Escribir "La carrera ",carreramenor," acumuló menor número de ingresantes, con ",menoring," ingresantes"
	/// [d] Para un año que ingrese el usuario, cuál es el promedio de alumnos por carrera, 
	///  y cuál carrera tuvo una cantidad de ingresantes más alejada de ese promedio.
	Escribir "Ingrese año"
	Leer añoelegido
	suma<-0
	Para carrera<-1 hasta 7 Hacer
		suma <- suma + u[carrera,añoelegido-2014]
	FinPara
	Promedio <- suma / 7 
	MayorDiferencia <- 0
	Para Carrera <- 1 Hasta 7 Hacer
		Diferencia <- Abs(Promedio - u[carrera,añoelegido-2014])
		Si Diferencia > MayorDiferencia Entonces 
			MayorDiferencia <- Diferencia
			CarreraMayorDif <- Carrera
		FinSi
	FinPara
	Escribir "El promedio de ingresantes por carrera del anio ",añoelegido," fué ",Promedio
	Escribir "la carrera ",CarreraMayorDif," fué la mas alejada del promedio"
	/// [e] Cuál fue el par año-carrera que menos ingresantes tuvo.
	menoring <- 9999999
	Para año<-1 hasta 10 Hacer
		Para carrera<-1 hasta 7 Hacer
			Si u[año,carrera] < menoring Entonces
				menoring <- u[año,carrera]
				a <- año + 2014 
				c <- carrera
			FinSi
		FinPara
	FinPara
	Escribir "En el año ",a," con la carrera ",c," se dio el menor ingreso con ",menoring," ingresantes"
FinAlgoritmo
