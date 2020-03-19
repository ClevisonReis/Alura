
public class TestaGerente {

	public static void main(String[] args) {
		
		Autenticavel referencia = new Cliente();
		
		Gerente gerente = new Gerente();
		gerente.setNome("Pedro Gerente");
		gerente.setCpf("111.222.333-44");
		gerente.setSalario(4000.0);
		
		System.out.println(gerente.getNome());
		System.out.println(gerente.getCpf());
		System.out.println(gerente.getSalario());
		
		
		gerente.setSenha(123);
		boolean autenticado = gerente.autentica(123);
		System.out.println(autenticado);
		
		System.out.println(gerente.getBonificacao());
	}

}
