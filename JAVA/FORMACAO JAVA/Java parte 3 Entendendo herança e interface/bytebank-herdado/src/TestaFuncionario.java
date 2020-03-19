
public class TestaFuncionario {
	public static void main(String[] args) {
		Funcionario funcionario = new Gerente();
		funcionario.setNome("Ana");
		funcionario.setCpf("000.111.222-33");
		funcionario.setSalario(1700.00);
		
		System.out.println(funcionario.getNome());
		System.out.println(funcionario.getBonificacao());
				
	}
}
