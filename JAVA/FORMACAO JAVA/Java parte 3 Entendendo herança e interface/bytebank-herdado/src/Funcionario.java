//N�o pode instanciar, criar objetos dessa classe. Por que � abstrato
//N�o pode da new
public abstract class Funcionario {	
	//Atributos de funcionario
	private String nome;
	private String cpf;
//	protected double salario; //Metodo torna p�blico somente para as classes filhos
	private double salario;
	
	//Metodo construtor
	public Funcionario() {
		
	}
	
	//Abstratro no metodo significa que ele n�o tem corpo n�o h� implementa��o
	//� implementado atrav�s dos filhos
	//N�o tem implementa��o
	public abstract double getBonificacao();
	
	//Metodos para acessar os atributos privados da classe Funcionario
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public double getSalario() {
		return salario;
	}
	public void setSalario(double salario) {
		this.salario = salario;
	}
}
