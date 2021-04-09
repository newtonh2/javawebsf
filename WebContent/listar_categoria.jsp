<%@ page import="java.util.List"%>
<%@ page import="model.categoria.DAOCategoria"%>
<%@ page import="model.categoria.Categoria"%>
<%@ page language="java" contentType="text/html;" pageEncoding="iso-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv=Content-Type content="text/html; charset=iso-8859-1">
    <link type="text/css" href="css/styles.css" rel="stylesheet" />
    <title>Lista de Categorias</title>
</head>
<body>
<table width="550" border="0">

    <tr>
        <td><b>Código</b></td>
        <td><b>Nome</b></td>
        <td></td>
        <td></td>
    </tr>
    <%
        String dtString = null;
        DAOCategoria dao = new DAOCategoria();
        List<Categoria> lista = DAOCategoria.listarCategorias();
        for(Categoria categoria : lista){
    %>
    <tr>
        <td><%= categoria.getCodigo() %></td>
        <td><%= categoria.getNome() %></td>
        <td><% out.print("<a href='alterar_categoria.jsp?codigo=" + categoria.getCodigo() + "&nome=" + categoria.getNome() +  "'>Alterar</a>"); %></td>
        <td><% out.print("<a href='excluir_categoria.jsp?codigo=" + categoria.getCodigo() + "&nome=" + categoria.getNome() +  "'>Excluir</a>"); %></td>
    </tr>
    <%
        }
    %>
</table>
<table width="550" border="0">
    <tr>
        <td align="center">
            <a href="index.jsp"><input type="button" value="Tela Inicial"></a>
            <a href="nova_categoria.jsp"><input type="button" value="Nova Categoria"></a>
        </td>
    </tr>
</table>
</body>
</html>