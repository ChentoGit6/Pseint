Algoritmo sin_titulo
	Dimension m[10,50]
	
	Para s<-1 hasta 10 Hacer
		Escribir "Ingrese para la versión ",s," de software, los resultados de las 50 pruebas (si funciona inserte Ok,sino Error)"
		Para p<-1 hasta 50 Hacer
			Escribir "Resultado prueba ",P,": "
			Leer m[s,p]
		FinPara
	FinPara
	Dimension cantOk[10]
	Para s<-1 hasta 10 Hacer
		contOk<-0
		Para p<-1 hasta 50 Hacer
			Si m[s,p]="Ok" Entonces
				contOk<-contOk+1
			FinSi
		FinPara
		Escribir "En la versión ",s," de software funcionaron correctamente ",contOk," resultados de prueba"
		Escribir ""
		cantOk[s]<-contOk
	FinPara
	mayorprueba<-0
	Para s<-1 hasta 10 hacer
		Si cantOk[s]>mayorprueba Entonces
			mayorprueba<-cantOk[s]
			versionsoftware<-s
		FinSi
	FinPara
	Escribir "La versión de software ",versionsoftware," tiene el mayor número de pruebas funcionando"
	Escribir ""
	Escribir "Los casos que funcionan en todas las versiones son: "
	Para p<-1 hasta 50 Hacer
		contverOk<-0
		Para s<-1 hasta 10 Hacer
			Si m[s,p]="Ok" Entonces
				contverOk<-contverOk+1
			FinSi
		FinPara
		Si contverOk=10 Entonces
			Escribir " -El número ",p
		FinSi
	FinPara
FinAlgoritmo
