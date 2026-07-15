Algoritmo E8_valor_prestamo
	// Se define el tipo de dato de las variables de interes
	Definir monto, tasaInteres, totalSimple, totalCompuesto Como Real
	Definir meses Como Entero
	
	// Se solicitan los datos del prestamo al usuario
	Escribir "Ingrese el monto del prestamo: "
	Leer monto
	Escribir "Ingrese la tasa de interes mensual (en porcentaje sin SIGNO): "
	Leer tasaInteres
	Escribir "Ingrese el numero de meses: "
	Leer meses
	
	// Se valida que los datos tengan sentido antes de calcular
	Si monto < 0 O tasaInteres/100 < 0 O meses < 0 Entonces
		Escribir "[ERROR] No se puede calcular: el monto, la tasa y los meses deben ser valores positivos."
	SiNo
		// Interes simple: el interes se calcula siempre sobre el monto original
		totalSimple <- monto * (1 + tasaInteres/100 * meses)
		
		// Interes compuesto: el interes se calcula mes a mes sobre el saldo acumulado
		totalCompuesto <- monto * (1 + tasaInteres/100) ^ meses
		
		Escribir "Valor total a pagar (interes simple) = ", totalSimple
		Escribir "Valor total a pagar (interes compuesto) = ", totalCompuesto
	FinSi
FinAlgoritmo
