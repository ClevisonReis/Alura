
public class TestaReferencias {

	public static void main(String[] args) {
		
		Gerente gerente = new Gerente();
		
		gerente.setNome("Paulo");
		gerente.getNome();
		gerente.setSalario(5000.0);
				
		EditorVideo ev = new EditorVideo();
		ev.setSalario(2500.0);
		
		Designer d = new Designer();
		d.setSalario(1000.0);
		
		ControlaBonificacao controle = new ControlaBonificacao();
		controle.registra(gerente);
		controle.registra(ev);
		controle.registra(d);
		
		System.out.println(controle.getSoma());
		
	}

}
