Algoritmo E5_mcm_hasta_negativo
	// Se define el tipo de dato de las variables de interes
	Definir numero, mcm, mcd, a, b, residuo Como Entero
	
	// Se lee el primer numero ANTES del ciclo
	Escribir "Ingrese el primer numero: "
	Leer numero
	
	// Se valida que el primer numero tambien sea valido
	Si numero < 0 Entonces
		Escribir "No se ingreso ningun numero valido. No hay MCM para calcular."
	SiNo
		mcm <- numero
				
		Repetir
			// Se solicita el siguiente numero
			Escribir "Ingrese el siguiente numero. El programa se terminará de ejecutar cuando ingrese un valor negativo: "
			Leer numero
			
			// Solo se procesa si el numero sigue siendo valido (no negativo)
			Si numero >= 0 Entonces
				a <- mcm
				b <- numero
				Mientras b <> 0 Hacer
					residuo <- a MOD b
					a <- b
					b <- residuo
				FinMientras
				mcd <- a
				numero <- numero
				mcm <- (mcm * numero) / mcd
			FinSi
		Hasta Que numero < 0
		
		Escribir "El MCM es: ", mcm
	FinSi
FinAlgoritmo