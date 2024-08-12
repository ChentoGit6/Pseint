Algoritmo Ejer2_Parcial_1A
	/// Se quiere analizar la evolución de los alumnos en el desarrollo de una materia. 
    /// La materia tiene 8 unidades, y cursan 50 alumnos. El docente quiere un programa 
	/// donde pueda ingresar cuáles ejercicios resuelve cada alumno, para luego obtener cierta 
    /// estadística. 
    /// [a] El programa debe permitir ingresar pares de datos formadas por: nro de alumno (1 a 50)
	/// , y unidad del ejercicio (1 a 8). Cada par indica que un alumno pudo resolver un ejercicio. 
    /// Obviamente puede haber pares "repetidos" (si un alumno resuelve varios ejercicios de una misma unidad)
    /// , o pares que no aparezcan en la carga de datos (si un alumno no resuelve ningún ejercicio de cierta 
	/// unidad). La carga finaliza con nro de alumno 0. Organice estos datos en una matriz de 50x8 
    /// donde cada casillero indique cuántos ejercicios resolvió cada alumno de una cierta unidad. 
    /// Luego de la carga de datos el programa debe informar: 
	/// [b] Los nros de los dos alumnos que más ejercicios resolvieron. 
	/// [c] Cuántos alumnos no resolvieron ningún ejercicio de una cierta unidad que elija el usuario. 
	/// [d] El promedio de cantidad de ejercicios resueltos por cada unidad.
	
	Dimension m(50,8)  /// 50 alumnos  8 unidades
	/// Primero ponemos la matriz en cero
	Para Alu = 1 Hasta 50 Hacer 
		Para Und = 1 Hasta 8 Hacer 
			m[Alu, Und] = 0
		FinPara
	FinPara
	
	/// Comienza la lectura de datos
	Leer Alu
	Mientras Alu <> 0 Hacer 
		Leer Und
		m[Alu,Und] = m[Alu,Und] + 1
		Leer Alu
	FinMientras
	
	/// [b] Los nros de los dos alumnos que más ejercicios resolvieron. 
	CantEjer1 = 0; CodAlu1 = 0;CantEjer2 = 0; CodAlu2 = 0
	Para Alu = 1 Hasta 50 Hacer 
		Suma = 0  /// Para cada alumno pongo la suma en 0
		Para Und = 1 Hasta 8 Hacer 
			Suma = Suma + m[Alu,Und]
		FinPara
		/// Una vez que tengo la suma, proceso los 2 mayores
		Si Suma > CantEjer1 Entonces 
			CantEjer2 = CantEjer1
			CodAlu2 = CodAlu1
			CantEjer1 = Suma
			CodAlu1 = Alu
		SiNo
			Si Suma > CantEjer2 Entonces 
				CantEjer2 = Suma
				CodAlu2 = Alu
			FinSi
		FinSi
	FinPara
	Escribir "El 1er alumno con más ejercicios fué ",CodAlu1," con ",CantEjer1," ejercicios resueltos"
	Escribir "El 2do alumno con más ejercicios fué ",CodAlu2," con ",CantEjer2," ejercicios resueltos"
	
	/// [c] Cuántos alumnos no resolvieron ningún ejercicio de una cierta unidad que elija el usuario
	Leer Unidad
	Cantidad = 0
	Para Alu = 1 Hasta 50 Hacer
		Si m[Alu,Unidad] = 0 Entonces 
			Cantidad = Cantidad + 1
		FinSi
	FinPara
	Escribir Cantidad," alumnos no resolvieron ejercicios de la unidad ",Unidad
	
	/// [d] El promedio de cantidad de ejercicios resueltos por cada unidad.
	Para Und = 1 Hasta 8 Hacer
		CantEjercicios = 0
		Para Alu = 1 Hasta 50 Hacer
			CantEjercicios = CantEjercicios + m[Alu,Und] 
		FinPara
		Promedio = CantEjercicios / 50
		Escribir "El promedio de ejercicios de la unidad ",Und," es ",Promedio
	FinPara
FinAlgoritmo
