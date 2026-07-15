Algoritmo E6_factores_primos
	// Se define el tipo de dato de las variables de interes
	Definir numero, divisor Como Entero
	Definir factores Como Cadena
	
	// Se solicita al usuario el numero a descomponer
	Escribir "Ingrese un numero: "
	Leer numero
	
	// Se inicializa la cadena que ira acumulando los factores
	factores <- ""
	
	// Se inicia probando con el menor divisor primo posible
	divisor <- 2
	
	// Mientras el numero no se haya reducido completamente a 1,
	// se sigue buscando factores
	Mientras numero > 1 Hacer
		// Mientras el divisor actual siga dividiendo exactamente al numero,
		// se agrega como factor y se reduce el numero
		Mientras numero MOD divisor = 0 Hacer
			// Si ya hay factores en la cadena, se agrega una coma antes del nuevo
			Si factores <> "" Entonces
				factores <- factores + " x "
			FinSi
			factores <- factores + ConvertirATexto(divisor)
			numero <- numero / divisor
		FinMientras
		// Se pasa al siguiente posible divisor
		divisor <- divisor + 1
	FinMientras
	
	// Se muestra la lista completa de factores
	Escribir "Descomposición en factores primos: "
	Escribir factores
FinAlgoritmo