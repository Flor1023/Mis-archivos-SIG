Algoritmo E12_escalera_asteriscos
	// Se define el tipo de dato de las variables de interes
	Definir numero, fila Como Entero
	Definir lineaAsteriscos Como Cadena
	
	// Se solicita al usuario el numero de filas de la escalera
	Escribir "Ingrese un numero: "
	Leer numero
	
	// Se valida que el numero sea mayor que cero antes de dibujar la escalera
	Si numero <= 0 Entonces
		Escribir "[ERROR] Debe ingresar un numero mayor que cero."
	SiNo
		// Se inicializa la linea vacia
		lineaAsteriscos <- ""
		
		// En cada vuelta se agrega un asterisco mas a la linea y se muestra
		Para fila <- 1 Hasta numero Hacer
			lineaAsteriscos <- lineaAsteriscos + "*"
			Escribir lineaAsteriscos
		FinPara
	FinSi
FinAlgoritmo