Algoritmo E13_validar_fecha
	// Se define el tipo de dato de las variables de interes
	Definir dia, mes, anio, diasDelMes Como Entero
	Definir esBisiesto, valida Como Logico
	Definir nombreMes Como Cadena
	
	// Se solicitan los tres datos de la fecha, en este orden: dia, mes, anio
	Escribir "Ingrese el dia (numerico del 1 al 31): "
	Leer dia
	Escribir "Ingrese el mes (numero del 1 al 12): "
	Leer mes
	Escribir "Ingrese el año: "
	Leer anio
	
	// Se inicializa la variable de validación
	valida <- Verdadero
	
	// Se valida el dia (rango generico 1 a 31), sin depender de los demas campos
	Si dia < 1 O dia > 31 Entonces
		Escribir "[ERROR] FECHA INVÁLIDA. El dia debe estar entre 1 y 31."
		valida <- Falso
	FinSi
	
	// Se valida el mes de forma independiente, sin depender del dia
	Si mes < 1 O mes > 12 Entonces
		Escribir "[ERROR] FECHA INVÁLIDA. El mes debe estar entre 1 y 12."
		valida <- Falso
	FinSi
	
	// Se valida el anio de forma independiente
	Si anio <= 0 Entonces
		Escribir "[ERROR] FECHA INVÁLIDA. El año debe ser mayor que cero."
		valida <- Falso
	FinSi
	
	// La validacion fina (dia real segun el mes) solo tiene sentido
	// si los tres campos ya pasaron sus rangos basicos
	Si valida = Verdadero Entonces
		esBisiesto <- Falso
		Si (anio MOD 4 = 0 Y anio MOD 100 <> 0) O (anio MOD 400 = 0) Entonces
			esBisiesto <- Verdadero
		FinSi
		
		Segun mes Hacer
			1, 3, 5, 7, 8, 10, 12:
				diasDelMes <- 31
			4, 6, 9, 11:
				diasDelMes <- 30
			2:
				Si esBisiesto = Verdadero Entonces
					diasDelMes <- 29
				SiNo
					diasDelMes <- 28
				FinSi
		FinSegun
		
		Si dia > diasDelMes Entonces
			Escribir "[ERROR] FECHA INVÁLIDA. El mes ", mes, " del año ", anio, " solo tiene ", diasDelMes, " dias."
			valida <- Falso
		FinSi
	FinSi
	
	// Si todo fue válido, se muestra la fecha completa
	Si valida = Verdadero Entonces
		Segun mes Hacer
			1: nombreMes <- "enero"
			2: nombreMes <- "febrero"
			3: nombreMes <- "marzo"
			4: nombreMes <- "abril"
			5: nombreMes <- "mayo"
			6: nombreMes <- "junio"
			7: nombreMes <- "julio"
			8: nombreMes <- "agosto"
			9: nombreMes <- "septiembre"
			10: nombreMes <- "octubre"
			11: nombreMes <- "noviembre"
			12: nombreMes <- "diciembre"
		FinSegun
		Escribir "[INFO] ", dia, " de ", nombreMes, " de ", anio
	FinSi
FinAlgoritmo