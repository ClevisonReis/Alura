
public class TestaSistema {

	public static void main(String[] args) {
		Gerente ger = new Gerente();
		ger.setSenha(123);
		
		Administrador adm = new Administrador();
		adm.setSenha(1234);
		
		Cliente cli = new Cliente();
		cli.setSenha(123);
				
		SistemaInterno si = new SistemaInterno();
		si.autentica(ger);
		si.autentica(adm);
		si.autentica(cli);

	}

}
