package dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import bean.Produto;

public class DAOProduto {

	public static void incluirProduto(String nome, int categoria, String descricao) throws Exception {
		String sql = "insert into produtos(categoria, nome, descricao) values(" + categoria + ", '" + nome + "', '" + descricao + "')";
		Conexao.getStatement().executeUpdate(sql);
	}

	public static void excluirProduto(int id) throws Exception{
		String sql = "delete from produtos where codigo = "+ id;
		Conexao.getStatement().executeUpdate(sql);
	}

	public static void alterarProduto(String nome, int codCategoria, String descricao, int id) throws Exception {
		String sql = "update produtos set nome ='" + nome + "', categoria = " + codCategoria + " , descricao = '" + descricao + "' where codigo = "+ id ;
		Conexao.getStatement().executeUpdate(sql);
	}

	public static ArrayList<Produto> listarProdutos() throws Exception {
		String sql = "select * from produtos";
		ResultSet rs = Conexao.getStatement().executeQuery(sql);
		ArrayList<Produto> lista = new ArrayList<>();
		while (rs.next()) {
			Produto p = new Produto();
			p.setCodigo(rs.getInt(1));
			p.setCodCategoria(rs.getInt(2));
			p.setNome(rs.getString(3));
			p.setDescricao(rs.getString(4));
			lista.add(p);
		}
		return lista;
	}

	public static boolean isNomeProdutoValido(String nome, int codigo) throws Exception {
		boolean valido = false;
		String sql = "select codigo from produtos where nome = '" + nome + "' and codigo <>" + codigo;
		ResultSet rs = Conexao.getStatement().executeQuery(sql);
		if (!rs.next()) valido = true;
		return valido;
	}
}
