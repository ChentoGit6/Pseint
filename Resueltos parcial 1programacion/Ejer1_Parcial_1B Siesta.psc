Algoritmo Ejer3_Parcial_1B
	/// Delante tuyo se encuentra una fila de N monstruos (enumerados de 1 a N), y cada uno tiene una 
	/// cierta cantidad de vida Hi. A tu disposición solamente tienes la vieja espada que te entregó 
	/// el extraño anciano cuando advirtió lo peligroso de salir sólo, que es capaz de quitar D 
	/// puntos de vida a cualquier enemigo. Antes de que los monstruos ataquen, escriba un programa 
	/// que permita ingresar N, todos los Hi, y por último D; para luego calcular e informar la 
	/// cantidad de ataques que serán necesarios para eliminar a todos los monstruos 
	/// (es decir, que la vida de cada uno llegue a 0 o menos).
	
	Escribir "Ingrese la cantidad de mounstruos"
	Leer N
	
	Dimension Mounstruos(N)
	
	/// no pide los golpes necesarios por mounstruos, pero fué variante de este ejercicio
	/// Lo implemento porque no se aleja mucho de lo que pide el enunciado
	Dimension Golpes(N)   
	
	Para i = 1 Hasta N Hacer 
		Escribir "Ingrese vida del mounstruo ",i; Leer Mounstruos[i]
	FinPara
	
	Escribir "Ingrese damage de la espada "
	Leer Damage
	
	
	Totalgolpes = 0
	Para i = 1 Hasta N Hacer 
		Si Mounstruos[i] % Damage = 0 Entonces
			Cant = Mounstruos[i] / Damage
		Sino 
			Cant = (Mounstruos[i] / Damage) + 1 /// es +1 es porque se necesita un golpe extra para el remanente de vida
		FinSi
		Golpes[i] = Cant
		Totalgolpes = Totalgolpes + Cant
	FinPara
	Escribir "Se necesitan ",Totalgolpes," para terminar con todos los Mounstruos"
FinAlgoritmo
