package bean;

import static dao.DAOCategoria.getNomeCategoria;

public class Produto {

	private int codigo;
	private int codCategoria;
	private String nome;
	private String descricao;
	
	public int getCodCategoria() {

		return codCategoria;
	}
	public void setCodCategoria(int codCategoria) {

		this.codCategoria = codCategoria;
	}
	public String getDescricao() {

		return descricao;
	}
	public void setDescricao(String descricao) {

		this.descricao = descricao;
	}
	public String getNome() {

		return nome;
	}
	public void setNome(String nome) {

		this.nome = nome;
	}
	public void setCodigo(int codigo) {

		this.codigo = codigo;
	}
	public int getCodigo() {

		return codigo;
	}
	
	public String getCategoriaFormatada(int codCategoria) {
		String nomeCategoria = "";
		try {
			nomeCategoria = getNomeCategoria(codCategoria);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nomeCategoria;
	}
}