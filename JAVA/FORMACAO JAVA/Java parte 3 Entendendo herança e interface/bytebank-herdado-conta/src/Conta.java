//Abstrato, n�o � poss�vel instanciar objetos da classe conta
public abstract class Conta {
	//Aatributos
	protected double saldo;
	private int agencia;
	private int numero;
	private Cliente titular;
	private static int total = 0;
	
	
	//M�todo construtor
	public Conta(int agencia, int numero) {
		Conta.total ++;
		//System.out.println("O total de contas �: " + Conta.total);		
		this.agencia = agencia;
		this.numero = numero;
		//this.saldo = 100;
		//System.out.println("Criando a conta " + this.numero);
	}
	
	//m�todos
	//void n�o da nenhum tipo de retorno ao m�todo.
	//Esse metodo recebe um valor e n�o retorna nada (void)
	public abstract void deposita(double valor);
	
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
		if (this.saca(valor)) {
			destino.deposita(valor);
			return true;
		}
		return false;
	}
	
	public double getSaldo(){
		return this.saldo;
	}
	
	public int getNumero() {
		return this.numero;
	}
	
	public void setNumero(int numero){
		if (numero <= 0) {
			System.out.println("N�o � permitido numero menor ou igual a zero.");
			return;
		}
		this.numero = numero;
	}
	
	public int getAgencia() {
		return this.agencia;
	}
	
	public void setAgencia(int agencia) {
		if (agencia <= 0) {
			System.out.println("N�o � permitido agencia menor ou igual a zero.");
			return;
		}
		this.agencia = agencia;
	}
	
	public Cliente getTitular() {
		return this.titular;
	}
	
	public void setTitular(Cliente titular) {
		this.titular = titular;
	}
	
	public static int getTotal() {
		return Conta.total;
	}
}