Algoritmo sin_titulo
	Dimension a[9,35]
	Para s<-1 hasta 9 Hacer
		Para p<-1 hasta 35 Hacer
			a[s,p]<-0
		FinPara
	FinPara
	Escribir "Ingrese el código de sucursal (para acabar la carga de datos de cod.suc, inserte un 0)"
	Leer codsuc
	
	Mientras codsuc<>0 hacer
		Escribir "Ingrese el código del producto y la cantidad vendida del mismo:"
		Leer prod, cantvend
		a[codsuc,prod]<-a[codsuc,prod]+cantvend
		Escribir "Ingrese el código de sucursal"
		Leer codsuc
	FinMientras
	
	Escribir "Ingrese el código de sucursal para ver su mayor cantidad de unidades vendidas (ingrese 0 para acabar)"
	Leer codsuc
	Mayor<-0
	Para prod<-1 hasta 35 hacer
		Si a[codsuc,prod]>Mayor Entonces
			Mayor<-a[codsuc,prod]
        FinSi
	FinPara
	Escribir "La mayor cantidad de ventas de la Sucursal ",codsuc," fue: ",Mayor
	Escribir ""
	suma<-0
	Escribir "Ingrese el código del producto del cual quiere saber el promedio de todas las unidades vendidas entre todas las sucursales"
	Leer prod
	Para codsuc<-1 hasta 9 Hacer
		suma<-suma+a[codsuc,prod]
	FinPara
	Escribir "El promedio de ventas del producto ",prod," es: ",suma/9
FinAlgoritmo
