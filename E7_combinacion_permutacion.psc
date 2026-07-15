Algoritmo E7_combinacion_permutacion
	// Se define el tipo de dato de las variables de interes
	Definir totalElementos, elementosATomar Como Entero
	Definir factTotal, factTomados, factRestantes, combinacion, permutacion Como Real
	
	// Se solicitan los valores al usuario
	Escribir "Ingrese el total de elementos (n): "
	Leer totalElementos
	Escribir "Ingrese la cantidad de elementos a tomar (r): "
	Leer elementosATomar
	
	// Se valida que los datos tengan sentido antes de calcular
	Si elementosATomar > totalElementos O totalElementos < 0 O elementosATomar < 0 Entonces
		Escribir "No se puede calcular: la cantidad de elementos a tomar no puede ser mayor al total, ni pueden ser negativos."
	SiNo
		// Se calculan los factoriales necesarios (una sola vez y se reutilizan)
		factTotal <- Factorial(totalElementos)
		factTomados <- Factorial(elementosATomar)
		factRestantes <- Factorial(totalElementos - elementosATomar)
		
		// La combinacion se calcula como total! / (tomados! * restantes!)
		combinacion <- factTotal / (factTomados * factRestantes)
		
		// La permutacion se calcula como total! / restantes!
		permutacion <- factTotal / factRestantes
		
		Escribir "Combinacion (nCr) = ", combinacion
		Escribir "Permutacion (nPr) = ", permutacion
	FinSi
FinAlgoritmo

SubProceso resultado <- Factorial(num)
	// Se define el tipo de dato de la variable de interes
	Definir i Como Entero
	
	resultado <- 1
	Para i <- 1 Hasta num Hacer
		resultado <- resultado * i
	FinPara
FinSubProceso