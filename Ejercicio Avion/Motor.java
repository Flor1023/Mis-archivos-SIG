public class Motor{
	String productor;
	Motor(String productor){
		this.productor=productor;
	}
	public void produccion(){
		System.out.println("El avión tiene un motor " +productor);
	}
}
