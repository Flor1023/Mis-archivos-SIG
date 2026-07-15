Algoritmo E2_conteo_impares
	// Se define el tipo de dato de las variables
	Definir numero, anterior, contadorImpares Como Entero
	
	contadorImpares <- 0
	
	// Se lee el primer número ANTES del ciclo
	Escribir "Ingrese un número: "
	Leer numero
	
	// Se muestra mensaje de advertencia al usuario
	Escribir "El programa se ejecutará solo si ingresa los números de forma ascendente"
	
	// Se crea un ciclo de repetición para que el usuario ingrese números
	Repetir
		// Se valida que el número sea impar
		// Si es impar se suma 1 al contador
		Si numero MOD 2 <> 0 Entonces
			contadorImpares <- contadorImpares + 1
		FinSi
		
		// Se almacena el número anterior para control de comparación
		anterior <- numero
		
		// Se solicita el nuevo número al usuario
		Escribir "Ingrese el siguiente número: "
		Leer numero
	Hasta Que numero < anterior
	
	// Se muestra la cantidad de números impares
	Escribir "Cantidad de numeros impares: ", contadorImpares
FinAlgoritmo