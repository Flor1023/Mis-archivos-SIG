Algoritmo E9_dos_columnas
	// Se define el tipo de dato de las variables de interes
	Definir columnaAscendente, columnaDescendente Como Entero
	Definir textoAscendente Como Cadena
	
	Escribir "Columna 1 (1 al 100)     Columna 2 (100 al 1)"
	
	// Se recorre un solo ciclo del 1 al 100 para la columna ascendente,
	// y se calcula la columna descendente a partir del mismo contador
	Para columnaAscendente <- 1 Hasta 100 Hacer
		// La columna descendente se obtiene restando el contador a 101
		columnaDescendente <- 101 - columnaAscendente
		
		// Se convierte el numero ascendente a texto para poder alinearlo con espacios
		textoAscendente <- ConvertirATexto(columnaAscendente)
		
		// Se completa con espacios hasta un ancho fijo de 5 caracteres,
		// asi la segunda columna siempre empieza en la misma posicion
		Mientras Longitud(textoAscendente) < 5 Hacer
			textoAscendente <- textoAscendente + " "
		FinMientras
		
		Escribir textoAscendente, columnaDescendente
	FinPara
FinAlgoritmo