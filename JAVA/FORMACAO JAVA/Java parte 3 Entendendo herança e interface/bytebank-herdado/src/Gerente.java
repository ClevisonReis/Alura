//Gerente é um funcionário, gerente herda da classe funcionário, e assina o contrato autenticável
public class Gerente extends Funcionario implements Autenticavel {
	
	private AutenticacaoUtil autenticador;
	
	public Gerente() {
		this.autenticador = new AutenticacaoUtil();
	}
	
	public double getBonificacao() {
		System.out.println("Método de bonificação do gerente!");
		return super.getSalario(); //(super) Indica que esse atribubo está na classe mãe
	}

	@Override
	public void setSenha(int senha) {
		this.autenticador.setSenha(senha);
	}

	@Override
	public boolean autentica(int senha) {
		return this.autenticador.autentica(senha);
	}
}
