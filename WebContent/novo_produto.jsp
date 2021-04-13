<%@ page import="dao.DAOCategoria" %>
<%@ page import="bean.Categoria" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html;" pageEncoding="iso-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<link type="text/css" href="css/styles.css" rel="stylesheet" />
<title>Novo Produto</title>
	<script type="text/javascript" language="javascript">
		function valida_form (){
			if(document.getElementById("nome").value.length < 3){
				alert('Por favor, preencha o campo nome');
				document.getElementById("nome").focus();
				return false
			}
		}
	</script>
</head>
<body>
	<form action="IncluirProduto" onsubmit="valida_form(this)">
		<table width="550" border="0">
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
				<td><input type="text" name="nome"></td>
			</tr>
			<tr>
				<td align="right">Descrição:</td>
				<td><input type="text" name="descricao"></td>
			</tr>
			<tr>
				<td></td>
				<td align="left">
					<input type="submit" value="Confirmar Inclusão" >
					<a href="listar_produto.jsp"><input type="button" value="Cancelar"></a>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>