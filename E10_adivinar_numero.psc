Algoritmo E10_adivinar_numero
	// Se define el tipo de dato de las variables de interes
	Definir numeroSecreto, intento, oportunidades Como Entero
	Definir acierto Como Logico
	
	// El computador "piensa" un numero al azar entre 1 y 50
	numeroSecreto <- Azar(50) + 1
	
	// Se inicializan las oportunidades y el estado del juego
	oportunidades <- 5
	acierto <- Falso
	
	Escribir "El computador penso un numero entre 1 y 50. Tienes 5 oportunidades para adivinarlo."
	
	// Se repite mientras queden oportunidades y no se haya acertado
	Mientras oportunidades > 0 Y acierto = Falso Hacer
		Escribir "Ingresa tu numero: "
		Leer intento
		
		Si intento = numeroSecreto Entonces
			Escribir "Felicidades, acertaste!"
			acierto <- Verdadero
		SiNo
			// Se descuenta una oportunidad
			oportunidades <- oportunidades - 1
			
			// Se le indica al usuario si el numero secreto es mayor o menor que su intento
			Si intento > numeroSecreto Entonces
				Escribir "El numero es menor. Te quedan ", oportunidades, " oportunidades."
			SiNo
				Escribir "El numero es mayor. Te quedan ", oportunidades, " oportunidades."
			FinSi
		FinSi
	FinMientras
	
	// Si se acabaron las oportunidades sin acertar, se revela el numero
	Si acerto = Falso Entonces
		Escribir "[INFO] Se acabaron tus oportunidades. El numero era: ", numeroSecreto
	FinSi
FinAlgoritmo