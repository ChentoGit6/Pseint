Algoritmo Ejer2_Parcial_1B
	/// Una universidad quiere analizar el crecimiento en el número de ingresantes a lo largo de 
	/// los últimos 10 años. En ella se dictan 7 carreras diferentes.[a] Escriba un programa que permita 
    /// ingresar 10x7 ternas de datos formadas por: año (2015 a 2024), nro de carrera (1 a 7) y cantidad 
    /// de ingresantes. El programa debe luego calcular y mostrar: 
	/// [b] Por cada carrera, en qué años bajó el número de ingresantes respecto al anterior. 
	/// [c] La carrera que acumuló menor número de ingresantes en total (a lo largo de los 10 años). 
	/// [d] Para un año que ingrese el usuario, cuál es el promedio de alumnos por carrera, 
	///  y cuál carrera tuvo una cantidad de ingresantes más alejada de ese promedio. 
	/// [e] Cuál fue el par año-carrera que menos ingresantes tuvo.
	
	Dimension m(7,10)   /// 7 carreras y 10 años 
	
	Para i = 1 Hasta 70 Hacer 
		Leer Carrera,Anio,Ingresantes
		ColAnio = Anio - 2014  /// No puedo usar el año como indice de columna, que va de 1 a 10
		m[Carrera,ColAnio] = Ingresantes
	FinPara
	
	Para Carrera = 1 Hasta 7 Hacer 
		Escribir "Carrera ",Carrera 
		Para Anio = 2 Hasta 10 Hacer 
			Si m[Carrera,Anio] < m[Carrera,Anio -1] Entonces 
				Escribir "En el año ",Anio," bajaron las inscripciones con respecto al año anterior"
			FinSi
		FinPara
	FinPara
	
	/// [c] La carrera que acumuló menor número de ingresantes en total (a lo largo de los 10 años). 
	MenorIngreso = 999999999  /// Al contrario del mayor, el menor se inicia con un número grande
	Para Carrera = 1 Hasta 7 Hacer 
		TotalIngresantes = 0  /// para sumar los ingrrsantes de cara carrera
		Para Anio = 1 Hasta 10 Hacer 
			TotalIngresantes = TotalIngresantes + m[Carrera,Anio]
		FinPara
		Si TotalIngresantes < MenorIngreso Entonces 
			MenorIngreso = TotalIngresantes
			CarreraMenor = Carrera
		FinSi
	FinPara
	Escribir "La carrera que menos ingresantes registró fué ",CarreraMenor," con ",MenorIngreso," ingresantes"
	
	/// [d] Para un año que ingrese el usuario, cuál es el promedio de alumnos por carrera, 
	///  y cuál carrera tuvo una cantidad de ingresantes más alejada de ese promedio. 
	Escribir "Ingrese el año a promediar (2015 a 2024)"
	Leer AnioPromediar 
	
	TotalIngresantes = 0
	Para Carrera = 1 Hasta 7 Hacer 
		TotalIngresantes = TotalIngresantes + m[Carrera,AnioPromediar-2014]
	FinPara
	Promedio = TotalIngresantes / 7 
	MayorDiferencia = 0
	Para Carrera = 1 Hasta 7 Hacer
		Diferencia = Abs(Promedio - m[Carrera,AnioPromediar-2014])
		Si Diferencia > MayorDiferencia Entonces 
			MayorDiferencia = Diferencia
			CarreraMayorDif = Carrera
		FinSi
	FinPara
	Escribir "El promedio de ingresantes por carrera del anio ",AnioPromediar," fué ",Promedio
	Escribir "la carrera ",CarreraMayorDif," fué la mas alejada del promedio"
	
	/// [e] Cuál fue el par año-carrera que menos ingresantes tuvo.
	MenorIngreso = 999999999  /// Al contrario del mayor, el menor se inicia con un número grande
	Para Carrera = 1 Hasta 7 Hacer
		Para Anio = 1 Hasta 10 Hacer 
			Si m[Carrera,Anio] < MenorIngreso Entonces 
				MenorIngreso = m[Carrera,Anio]
				CarreraMenor = Carrera
				AnioMenor = 2014 + anio
			FinSi
		FinPara
	FinPara
	Escribir "El menor ingreso se dió en la carrera ",CarreraMenor," en el año ",AnioMenor," con ",MenorIngreso," ingreantes"
FinAlgoritmo
