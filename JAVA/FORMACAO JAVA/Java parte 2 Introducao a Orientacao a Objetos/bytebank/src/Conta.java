public class Conta {
	//Aatributos
	double saldo;
	int agencia;
	int numero;
	String titular;
	
	
	//métodos
	//void não da nenhum tipo de retorno ao método.
	//Esse metodo recebe um valor e não retorna nada (void)
	public void deposita(double valor) {
		this.saldo += valor;
	}
	
	//Esse método retorna um boolean
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