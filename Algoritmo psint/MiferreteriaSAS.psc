Algoritmo Mi_ferreteria
	Escribir 'Por favor digite el nombre del empleado'
	Leer name_emp
	Escribir 'ingrese precio de martillos'
	Leer p_martillos
	Escribir 'ingrese cantidad de martillos'
	Leer c_martillos
	T_martillo <- p_martillos*c_martillos
	Escribir 'ingrese precio de puntillas'
	Leer p_puntillas
	Escribir 'ingrese cantidad de puntillas'
	Leer c_puntillas
	T_puntillas <- p_puntillas*c_puntillas
	ventas <- T_martillo+T_puntillas
	Si ventas>1000000 Entonces
		Escribir name_emp+' ', 'tu venta fue de '+' ', ventas, ' ', 'tienes derecho a una bonificacion de $200,000'
	SiNo
		Si ventas>=200000 Y ventas<=1000000 Entonces
			Escribir name_emp+' tu venta fue de '+' ', ventas, ' ', 'alcanzaste la venta minima del mes, pero no tienes derecho a bonificacion'
		SiNo
			Escribir name_emp+' ', 'tu venta fue de '+' ', ventas, ' ', 'No cumples con las ventas minimas'
		FinSi
	FinSi
FinAlgoritmo
