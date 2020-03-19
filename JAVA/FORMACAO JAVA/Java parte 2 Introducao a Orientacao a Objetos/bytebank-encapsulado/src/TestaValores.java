
public class TestaValores {
	public static void main(String[] args) {
		Conta conta = new Conta(123, 7890);
		
		conta.setAgencia(-50);
		conta.setNumero(-10);
		
		System.out.println(Conta.getTotal());
	}
}
