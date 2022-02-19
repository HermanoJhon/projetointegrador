<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema de Cadastro de Usuário</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-maskmoney/3.0.2/jquery.maskMoney.min.js"></script>
<!--Construçãoo de máscaras pelo JQUERY-->
<script type="text/javascript">
	$(function() {
		$('.mask-real').maskMoney({
			showSymbol : true,
			symbol : 'R$ ',
			decimal : ',',
			thousands : '.',
			allowZero : true
		}); // valor monet�rio
	});
</script>
</head>
<body>
	<div align=center>Sistema de Cadastro de Usuário</div>
	<div align=center>Cadastraro</div>
	<br>
	<div>
		<form action="emp_011.jsp" method="post">
			<table>
				<tr>
					<td>Nome</td>
					<td><input type="text" name="nm" required maxlength=45></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="em" required maxlength=45></td>
				</tr>
				<tr>
					<td>Senha</td>
					<td><input type="password" name="sn" maxlength=45></td>
				</tr>
				<tr>
					<td colspan=2>&nbsp;</td>
				</tr>
				<tr>
					<th colspan=2><input type="submit" value="Enviar"></th>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
