<%@ page import="dao.DAOCategoria" %>
<%@ page import="bean.Categoria" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html;" pageEncoding="iso-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<link type="text/css" href="css/styles.css" rel="stylesheet" />
<title>Alterar Produto</title>
</head>
<body>
	<div id="tudo">
		<div id="topo">
			<%@include file="headerSite.jsp" %>
		</div>
		<form action="AlterarProduto">
			<table width="550" border="0">
				<tr>
					<td align="right">Código:</td>
					<td><input type="text" name="codigo" value="<%=request.getParameter("codigo") %>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Categoria:</td>
					<td>
						<select name="categoria">
							<%
								String dtString = null;
								DAOCategoria dao = new DAOCategoria();
								List<Categoria> lista = DAOCategoria.listarCategorias();
								for(Categoria categoria : lista){
							%>
							<option value="<%= categoria.getCodigo() %>"><%= categoria.getNome() %></option>
							<%
								}
							%>
						</select>
					</td>
				</tr>
				<tr>
					<td align="right">Nome:</td>
					<td><input type="text" name="nome" value="<%=request.getParameter("nome") %>" readonly="readonly"></td>
				</tr>
				<tr>
					<td align="right">Descrição:</td>
					<td><input type="text" name="descricao" value="<%=request.getParameter("descricao") %>"></td>
				</tr>
				<tr>
					<td></td>
					<td align="left">
						<input type="submit" value="Confirmar Alteração">
						<a href="listar_produto.jsp"><input type="button" value="Cancelar"></a>
					</td>
				</tr>
			</table>
		</form>
		<div id="rodape">
			<%@include file="footerSite.jsp"  %>
		</div>
	</div>
</body>
</html>