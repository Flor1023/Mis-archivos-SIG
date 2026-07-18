public class Pasajero{
	String nombre;
	String puesto;
	Maleta m;
	Pasajero(String nombre, String puesto){
		this.nombre=nombre;
		this.puesto=puesto;
	}
	public void pesar(){
		m = new Maleta ("15kg");
		m.pesar();
	}
	public void sentarse(){
		System.out.println(nombre+ " está sentada en el puesto " +puesto);
	}
}
