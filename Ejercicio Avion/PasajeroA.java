public class PasajeroA{
	String nombre;
	String puesto;
	MaletaA m;
	PasajeroA(String nombre, String puesto){
		this.nombre=nombre;
		this.puesto=puesto;
	}
	public void pesar(){
		m = new MaletaA("25kg");
		m.pesar();
	}
	public void sentarse(){
		System.out.println(nombre+ " está sentado en el puesto " +puesto);
	}
}
