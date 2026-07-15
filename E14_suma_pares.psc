Algoritmo E14_suma_pares
	// Se define el tipo de dato de las variables de interes
	Definir n, i, primerPar, termino, resultado Como Entero
	
	// Se solicita al usuario el valor de N
	Escribir "Ingrese un numero (N): "
	Leer n
	
	// Se valida que N no sea negativo antes de calcular
	Si n < 0 Entonces
		Escribir "[ERROR] N debe ser mayor o igual que cero."
	SiNo
		// Se calcula el primer numero par estrictamente mayor que N
		// (sin importar si N es par o impar, siempre se excluye)
		primerPar <- n + 1
		Si primerPar MOD 2 <> 0 Entonces
			primerPar <- primerPar + 1
		FinSi
		
		// Se inicializa el acumulador de la suma
		resultado <- 0
		
		// Se suman los N numeros pares consecutivos a partir de primerPar
		// Si el número ingresado es par, este se omite y considera los siguientes
		Para i <- 1 Hasta n Hacer
			termino <- primerPar + 2 * (i - 1)
			resultado <- resultado + termino
		FinPara
		
		Escribir "[INFO] La suma de los ", n, " numeros pares siguientes a ", n, " es: ", resultado
	FinSi
FinAlgoritmo