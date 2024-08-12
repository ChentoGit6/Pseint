Algoritmo sin_titulo
	Escribir "Ingrese un dato numérico"
	Leer H
	N<-abs(H)
	contador <- 0
	Dimension A[N]
	Para i<-1 hasta N con paso 1 hacer
		A[i]<-i
		Si A[i]%6=0 entonces
			contador<-contador+1
		FinSi
	FinPara
	Si N >= 7 Entonces
		Escribir A[7]
	SiNo
		Escribir "No existe un valor 7 en el número ingresado"
	fINsi
	Escribir "La cantidad de númueros que son divisibles por 6 son: ", contador
	Si N >= 23 Entonces
		Escribir A[23]
	SiNo
		Escribir "No existe un valor 23 en el número ingresado"
	fINsi
FinAlgoritmo