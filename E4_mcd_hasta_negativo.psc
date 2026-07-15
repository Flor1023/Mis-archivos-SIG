Algoritmo E4_mcd_hasta_negativo
	// Se define el tipo de dato de las variables de interes
	Definir numero, mcd, a, b, residuo Como Entero
	
	// Se lee el primer numero ANTES del ciclo
	Escribir "Ingrese el primer numero: "
	Leer numero
	
	// Se valida que el primer numero tambien sea valido
	Si numero < 0 Entonces
		Escribir "No se ingreso ningun numero valido. No hay MCD para calcular."
	SiNo
		mcd <- numero
		
		Repetir
			// Se solicita el siguiente numero
			Escribir "Ingrese el siguiente numero. El programa se terminará de ejecutar cuando ingrese un valor negativo: "
			Leer numero
			
			// Solo se procesa si el numero sigue siendo valido (no negativo)
			Si numero >= 0 Entonces
				a <- mcd
				b <- numero
				Mientras b <> 0 Hacer
					//se utiliza método de Euclides: división entre el divisor y el residuo
					residuo <- a MOD b
					a <- b
					b <- residuo
				FinMientras
				mcd <- a
			FinSi
		Hasta Que numero < 0
		
		Escribir "El MCD es: ", mcd
	FinSi
FinAlgoritmo