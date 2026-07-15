Algoritmo E11_dado_cincuenta_veces
	// Se define el tipo de dato de las variables de interes
	Definir tirada, cara, contadorUnos Como Entero
	
	// Se inicializa el contador de veces que sale el numero 1
	contadorUnos <- 0
	
	// Se simulan 50 lanzamientos del dado
	Para tirada <- 1 Hasta 50 Hacer
		// Se genera un numero al azar entre 1 y 6, simulando la cara del dado
		cara <- Azar(6) + 1
		
		// Se muestra el resultado de cada lanzamiento
		Escribir "[INFO] Lanzamiento ", tirada, ": ", cara
		
		// Si la cara obtenida es 1, se aumenta el contador
		Si cara = 1 Entonces
			contadorUnos <- contadorUnos + 1
		FinSi
	FinPara
	
	Escribir "[INFO] El numero 1 salió ", contadorUnos, " veces en 50 lanzamientos."
FinAlgoritmo