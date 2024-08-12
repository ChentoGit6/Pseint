Algoritmo sin_titulo
	/// Delante tuyo se encuentra una fila de N monstruos (enumerados de 1 a N), y cada uno tiene una 
	/// cierta cantidad de vida Hi. A tu disposición solamente tienes la vieja espada que te entregó 
	/// el extraño anciano cuando advirtió lo peligroso de salir sólo, que es capaz de quitar D 
	/// puntos de vida a cualquier enemigo. Antes de que los monstruos ataquen, escriba un programa 
	/// que permita ingresar N, todos los Hi, y por último D; para luego calcular e informar la 
	/// cantidad de ataques que serán necesarios para eliminar a todos los monstruos 
	/// (es decir, que la vida de cada uno llegue a 0 o menos).
	
	Escribir "Ingrese numeros de monstruos"
	Leer N
	Dimension monst[N]
	sumavidamonst <- 0
	Escribir "Ingrese la vida de todos los monsturos"
	Para N<-1 hasta N Hacer
		Leer monst[N]
		sumavidamonst <- sumavidamonst + monst[N]
	FinPara
	Escribir "Ingrese el daño de la espada"
	Leer D
	cantataques <- 0
	Mientras sumavidamonst > 0 hacer
		Si sumavidamonst % D = 0 Entonces
			cantataques <- sumavidamonst / D
		SiNo
			cantataques <- (sumavidamonst / D - ((sumavidamonst % D))/D) + 1 /// agrego  +1 por si la vida del monst queda con decimal, entonces hace falta 1 ataque extra
		FinSi
		sumavidamonst<-0
	FinMientras
	Escribir "Se necesitan ",cantataques," ataques para eliminar a todos los monstruos"
FinAlgoritmo
