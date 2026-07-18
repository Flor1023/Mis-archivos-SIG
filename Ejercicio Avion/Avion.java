public class Avion{
	String denominacion;
	String aerolinea;
	Motor m;
	Pasajero p;
	PasajeroA c;
	Avion(String denominacion, String aerolinea){
		this.denominacion=denominacion;
		this.aerolinea=aerolinea;
	}
	public void arrancar(){
		System.out.println("El avión "+denominacion+" de la aerolínea "+aerolinea+" va a arrancar");
	}
	public void crearPasajero(){
		p=new Pasajero("Daniela Gonzalez","2A");
	}
	public void crearPasajeroA(){
		c=new PasajeroA("David Álvarez","2B");
	}
	public void crearMotor(){
		m= new Motor("británico");
	}
	public void motor(){
		m.produccion();
	}
	public void abordar(){
		p.sentarse();
		c.sentarse();
		p.pesar();
		c.pesar();
	}
	public int multiplicacion(int a, int b){
   		if(b == 0){
        		return 0;
    		}
		if(b == 1){
        		return a;
   		}
			return a + multiplicacion(a, b - 1);
	}
	public int exponencial(int x, int y){
    		if(y == 0){
        		return 1;
		}
		if(y == 1){
			return x;
		}
		return multiplicacion(x, exponencial(x, y - 1));
	}
	
}