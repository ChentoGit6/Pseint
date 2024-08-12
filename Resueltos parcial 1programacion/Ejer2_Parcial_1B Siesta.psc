Algoritmo Ejer2_Parcial_1B
	/// Una universidad quiere analizar el crecimiento en el n�mero de ingresantes a lo largo de 
	/// los �ltimos 10 a�os. En ella se dictan 7 carreras diferentes.[a] Escriba un programa que permita 
    /// ingresar 10x7 ternas de datos formadas por: a�o (2015 a 2024), nro de carrera (1 a 7) y cantidad 
    /// de ingresantes. El programa debe luego calcular y mostrar: 
	/// [b] Por cada carrera, en qu� a�os baj� el n�mero de ingresantes respecto al anterior. 
	/// [c] La carrera que acumul� menor n�mero de ingresantes en total (a lo largo de los 10 a�os). 
	/// [d] Para un a�o que ingrese el usuario, cu�l es el promedio de alumnos por carrera, 
	///  y cu�l carrera tuvo una cantidad de ingresantes m�s alejada de ese promedio. 
	/// [e] Cu�l fue el par a�o-carrera que menos ingresantes tuvo.
	
	Dimension m(7,10)   /// 7 carreras y 10 a�os 
	
	Para i = 1 Hasta 70 Hacer 
		Leer Carrera,Anio,Ingresantes
		ColAnio = Anio - 2014  /// No puedo usar el a�o como indice de columna, que va de 1 a 10
		m[Carrera,ColAnio] = Ingresantes
	FinPara
	
	Para Carrera = 1 Hasta 7 Hacer 
		Escribir "Carrera ",Carrera 
		Para Anio = 2 Hasta 10 Hacer 
			Si m[Carrera,Anio] < m[Carrera,Anio -1] Entonces 
				Escribir "En el a�o ",Anio," bajaron las inscripciones con respecto al a�o anterior"
			FinSi
		FinPara
	FinPara
	
	/// [c] La carrera que acumul� menor n�mero de ingresantes en total (a lo largo de los 10 a�os). 
	MenorIngreso = 999999999  /// Al contrario del mayor, el menor se inicia con un n�mero grande
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
	Escribir "La carrera que menos ingresantes registr� fu� ",CarreraMenor," con ",MenorIngreso," ingresantes"
	
	/// [d] Para un a�o que ingrese el usuario, cu�l es el promedio de alumnos por carrera, 
	///  y cu�l carrera tuvo una cantidad de ingresantes m�s alejada de ese promedio. 
	Escribir "Ingrese el a�o a promediar (2015 a 2024)"
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
	Escribir "El promedio de ingresantes por carrera del anio ",AnioPromediar," fu� ",Promedio
	Escribir "la carrera ",CarreraMayorDif," fu� la mas alejada del promedio"
	
	/// [e] Cu�l fue el par a�o-carrera que menos ingresantes tuvo.
	MenorIngreso = 999999999  /// Al contrario del mayor, el menor se inicia con un n�mero grande
	Para Carrera = 1 Hasta 7 Hacer
		Para Anio = 1 Hasta 10 Hacer 
			Si m[Carrera,Anio] < MenorIngreso Entonces 
				MenorIngreso = m[Carrera,Anio]
				CarreraMenor = Carrera
				AnioMenor = 2014 + anio
			FinSi
		FinPara
	FinPara
	Escribir "El menor ingreso se di� en la carrera ",CarreraMenor," en el a�o ",AnioMenor," con ",MenorIngreso," ingreantes"
FinAlgoritmo
