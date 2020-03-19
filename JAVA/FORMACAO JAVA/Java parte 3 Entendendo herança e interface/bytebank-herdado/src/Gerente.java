//Gerente � um funcion�rio, gerente herda da classe funcion�rio, e assina o contrato autentic�vel
public class Gerente extends Funcionario implements Autenticavel {
	
	private AutenticacaoUtil autenticador;
	
	public Gerente() {
		this.autenticador = new AutenticacaoUtil();
	}
	
	public double getBonificacao() {
		System.out.println("M�todo de bonifica��o do gerente!");
		return super.getSalario(); //(super) Indica que esse atribubo est� na classe m�e
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
