Algoritmo sin_titulo
	Dimension cine[3,5]
	Para s<-1 hasta 3 Hacer
		Para p<-1 hasta 5 Hacer
			cine[s,p]<-0
		FinPara
	FinPara
	
	Para s<-1 hasta 3 Hacer
		Escribir "Sala ",s,":"
		Para p<-1 hasta 5 Hacer
			Escribir "Ingrese la cantidad de entradas vendidas de la película ",p
			Leer cine[s,p]
		FinPara
		Escribir ""
	FinPara
	sumap<-0
	Escribir "Ingresa la pelíula para determinar en cuántas salas se vendieron menos de 15 entradas"
	Leer p
	Para s<-1 hasta 3 Hacer
		Si cine[s,p]<15 Entonces
			sumap<-sumap+1
		FinSi
	FinPara
	Escribir "En ",sumap," salas se vendieron menos de 15 entradas para la película ",p
	
	ms<-0
	mp<-0
	salam<-0
	Para s<-1 hasta 3 Hacer
		Para p<-1 hasta 5 hacer
			ms<-ms+cine[s,p]
		finpara
		Si ms>salam Entonces
			salam<-ms
			
		FinSi
	FinPara
	Escribir salam
FinAlgoritmo
