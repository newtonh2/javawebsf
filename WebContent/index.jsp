<%@ page language="java" contentType="text/html;" pageEncoding="iso-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv=Content-Type content="text/html; charset=iso-8859-1">
		<link type="text/css" href="css/styles.css" rel="stylesheet" />
		<title>Projeto Java Web</title>
	</head>
<body>
	<div id="tudo">
		<div id="topo">
			<%@include file="headerSite.jsp" %>
		</div>
		<table width="550" border="0">
			<tr>
				<td align="center"><a href="listar_produto.jsp">Cadastro de Produtos</a></td>
			</tr>
			<tr>
				<td align="center"><a href="listar_categoria.jsp">Cadastro de Categorias</a></td>
			</tr>
		</table>
		<div id="rodape">
			<%@include file="footerSite.jsp"  %>
		</div>
	</div>
</body>
</html>