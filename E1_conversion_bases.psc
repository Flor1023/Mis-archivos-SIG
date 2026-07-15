Algoritmo E1_conversion_bases
	// Se define el tipo de dato de las variables de interes
	Definir opcion, numero, residuo, valor, i, totalCaracteres, k, base Como Entero
	Definir opcionValida Como Logico
	Definir entrada, resultado, digitos, caracter Como Cadena
	Dimension bases[3]
	Dimension etiquetas[3]
	Definir bases Como Entero
	Definir etiquetas Como Cadena
	
	// Se definen los dígitos válidos para las conversiones
	digitos <- "0123456789ABCDEF"
	opcionValida <- Verdadero
	
	// Arreglo con las 3 bases posibles y sus nombres (indice 1=binario, 2=octal, 3=hexa)
	bases[1] <- 2
	bases[2] <- 8
	bases[3] <- 16
	etiquetas[1] <- "Binario"
	etiquetas[2] <- "Octal"
	etiquetas[3] <- "Hexadecimal"
	
	Escribir "En que base esta el numero que va a ingresar?"
	Escribir "1. Decimal"
	Escribir "2. Binario"
	Escribir "3. Octal"
	Escribir "4. Hexadecimal"
	Leer opcion
	
	// PROCESO 1: se obtiene el valor en decimal, sin importar la base de entrada
	Segun opcion Hacer
		1:
			Escribir "Ingrese el numero decimal: "
			Leer numero
		2, 3:
			// Binario y octal comparten la misma lógica, solo cambia la base
			Si opcion = 2 Entonces
				base <- 2
				Escribir "Ingrese el numero binario: "
			SiNo
				base <- 8
				Escribir "Ingrese el numero octal: "
			FinSi
			Leer entrada
			numero <- 0
			totalCaracteres <- Longitud(entrada)
			Para i <- 1 Hasta totalCaracteres Hacer
				caracter <- SubCadena(entrada, i, i)
				valor <- (ConvertirANumero(caracter))
				numero <- numero * base + valor
			FinPara
		4:
			Escribir "Ingrese el numero hexadecimal: "
			Leer entrada
			numero <- 0
			base <- 16
			totalCaracteres <- Longitud(entrada)
			Para i <- 1 Hasta totalCaracteres Hacer
				caracter <- SubCadena(entrada, i, i)
				Si caracter >= '0' Y caracter <= '9' Entonces
					valor <- (ConvertirANumero(caracter))
				SiNo
					Segun caracter Hacer
						'A': valor <- 10
						'B': valor <- 11
						'C': valor <- 12
						'D': valor <- 13
						'E': valor <- 14
						'F': valor <- 15
					FinSegun
				FinSi
				numero <- numero * base + valor
			FinPara
		De Otro Modo:
			Escribir "[ERROR] Opcion invalida."
			opcionValida <- Falso
	FinSegun
	
	// PROCESO 2: se muestran las bases que faltan, recorriendo el arreglo en un solo ciclo
	Si opcionValida = Verdadero Entonces
		Si opcion <> 1 Entonces
			Escribir "Decimal: ", numero
		FinSi
		
		Para k <- 1 Hasta 3 Hacer
			// k=1 -> binario (opcion 2), k=2 -> octal (opcion 3), k=3 -> hexa (opcion 4)
			Si opcion <> k + 1 Entonces
				base <- bases[k]
				resultado <- ""
				Si numero = 0 Entonces
					resultado <- "0"
				SiNo
					valor <- numero
					Mientras valor > 0 Hacer
						residuo <- valor MOD base
						resultado <- SubCadena(digitos, residuo+1, residuo+1) + resultado
						valor <- Trunc(valor / base)
					FinMientras
				FinSi
				Escribir etiquetas[k], ": ", resultado
			FinSi
		FinPara
	FinSi
FinAlgoritmo