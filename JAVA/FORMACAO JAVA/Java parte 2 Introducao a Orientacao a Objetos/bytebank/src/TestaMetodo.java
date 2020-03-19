
public class TestaMetodo {
	public static void main(String[] args) {
		Conta contaDoCliente = new Conta();
		contaDoCliente.saldo = 100;
		
		contaDoCliente.deposita(275);
		System.out.println(contaDoCliente.saldo);
		
		boolean retornoDoSqaue = contaDoCliente.saca(200);
		if (retornoDoSqaue) {
			System.out.println("Agurde a contagem das notas");
			System.out.println(contaDoCliente.saldo);
		} else {
			System.out.println("N�o foi poss�vel efetuar a opera��o.");
		}
		
		Conta contaDaAna = new Conta();
		contaDaAna.deposita(1000);
		
		contaDaAna.transfere(300, contaDoCliente);
		System.out.println("Novo saldo da conta da ANA " + contaDaAna.saldo);
		System.out.println("Saldo da conta do cliente " + contaDoCliente.saldo);
		
		contaDoCliente.titular = "Jo�o Silva";
		System.out.println(contaDoCliente.titular);
		
	}
}
