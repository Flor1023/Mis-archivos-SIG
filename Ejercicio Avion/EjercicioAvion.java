import java.util.Scanner;
public class EjercicioAvion{
	public static void main(String args[]){
		Scanner entrada = new Scanner(System.in);
		Avion a = new Avion("QA23S", "Avianca");
		a.arrancar();
		a.crearPasajero();
		a.crearPasajeroA();
		a.crearMotor();
		a.motor();
		a.abordar();
		System.out.println(a.exponencial(2, 5));
	}
}