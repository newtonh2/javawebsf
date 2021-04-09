package model.categoria;

import config.Conexao;

import java.sql.ResultSet;
import java.util.ArrayList;

public class DAOCategoria {

    public static void incluirCategoria(String nome) throws Exception {
        String sql = "insert into categorias( nome ) values('" + nome + "')";
        Conexao.getStatement().executeUpdate(sql);
    }

    public static void excluirCategoria(int id) throws Exception {
        String sql = "delete from categorias where codigo = "+ id;
        Conexao.getStatement().executeUpdate(sql);
    }

    public static void alterarCategoria(String nome, int id) throws Exception {
        String sql = "update categorias set nome = '" + nome + "' where codigo = "+ id ;
        Conexao.getStatement().executeUpdate(sql);
    }

    public static ArrayList<Categoria> listarCategorias() throws Exception {
        String sql = "select * from categorias";
        ResultSet rs = Conexao.getStatement().executeQuery(sql);

        ArrayList<Categoria> lista = new ArrayList<>();

        while (rs.next()) {
            Categoria c = new Categoria();
            c.setCodigo(rs.getInt(1));
            c.setNome(rs.getString(2));

            lista.add(c);
        }

        return lista;
    }

    public static boolean isNomeCategoriaValido(String nome, int codigo) throws Exception {
        boolean valido = false;

        String sql = "select codigo from categorias where nome = '" + nome + "' and codigo <> " + codigo;
        ResultSet rs = Conexao.getStatement().executeQuery(sql);

        if (!rs.next()) valido = true;

        return valido;
    }



}
