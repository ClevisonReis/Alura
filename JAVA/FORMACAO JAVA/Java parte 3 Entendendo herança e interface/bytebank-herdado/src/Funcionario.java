//Não pode instanciar, criar objetos dessa classe. Por que é abstrato
//Não pode da new
public abstract class Funcionario {	
	//Atributos de funcionario
	private String nome;
	private String cpf;
//	protected double salario; //Metodo torna público somente para as classes filhos
	private double salario;
	
	//Metodo construtor
	public Funcionario() {
		
	}
	
	//Abstratro no metodo significa que ele não tem corpo não há implementação
	//É implementado através dos filhos
	//Não tem implementação
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
