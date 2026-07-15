Algoritmo E3_es_primo
	// Se define el tipo de dato de las variables de interes
	Definir numero, divisores, residuo, i Como Entero
	
	// Se solicita al usuario que ingrese el numero
	Escribir "Ingrese un numero: "
	Leer numero
	
	// Se inicializa la variable que almacena la cantidad de divisores
	divisores <- 0
	
	// Se define un ciclo que permita validar si cada numero es divisor del ingresado
	Para i <- 1 Hasta numero Hacer
		residuo <- numero MOD i
		// Si es divisor se aumenta 1 a la variable 'divisores'
		Si residuo = 0 Entonces
			divisores <- divisores + 1
		FinSi
	FinPara

	Si divisores = 2 Entonces
		Escribir "El numero ", numero, " es primo."
	SiNo
		Escribir "El numero ", numero, " NO es primo."
	FinSi
	
FinAlgoritmo