public class Conta {
	//Aatributos
	double saldo;
	int agencia;
	int numero;
	String titular;
	
	
	//m�todos
	//void n�o da nenhum tipo de retorno ao m�todo.
	//Esse metodo recebe um valor e n�o retorna nada (void)
	public void deposita(double valor) {
		this.saldo += valor;
	}
	
	//Esse m�todo retorna um boolean
	public boolean saca(double valor) {
		if (this.saldo >= valor) {
			this.saldo -= valor;
			return true;
		}else {
			return false;
		}
	}
	
	public boolean transfere(double valor, Conta destino) {
		if (this.saldo >= valor) {
			this.saldo -= valor;
			destino.deposita(valor);
			return true;
		}
		return false;
	}
	
}