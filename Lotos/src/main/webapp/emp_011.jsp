<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="classes.Vagas"%>
<%
String nm = request.getParameter("nm");
String em = request.getParameter("em");
String sn = request.getParameter("sn");

//---- Back-End -----------------------
Vagas v = new Vagas();
v.setNome(nm);
v.setEmail(em);
v.setSenha(sn);
v.Incluir();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema de Cadastro de Usuário</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
</head>
<body>
	<div>Sistema de Cadastro de Usuário</div>
	<br>
	<div>
		<table>
			<tr>
				<td>Nome</td>
				<td style="color: blue"><%=nm%></td>
			</tr>
			<tr>
				<td>Email</td>
				<td style="color: blue"><%=em%></td>
			</tr>
			<tr>
				<td>senha</td>
				<td style="color: blue"><%=sn%></td>
			</tr>
			<tr>
				<th colspan=2 style="color: green">Usuário cadastrado com sucesso.</th>
			</tr>
		</table>
	</div>
	<br>
	<div>
		<form action="index.jsp" method="get">
			<input type="submit" value="Voltar">
		</form>
	</div>
</body>
</html>