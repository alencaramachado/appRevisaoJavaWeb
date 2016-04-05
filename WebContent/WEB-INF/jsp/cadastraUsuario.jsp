<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Cadastra de Usuário</title>

<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/footer.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><i class="fa fa-desktop"></i>
					App Internet B</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="mvc?logica=RedirecionaCadastraUsuarioLogica"><i
							class="fa fa-user"></i> Cadastrar Usuário</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<section>
					<form action="/appRevisaoJavaWeb/mvc?logica=InserirUsuarioLogica"
						method="post">
						<c:if test="${not empty usuario }">
							<h2>Alterar usuário: ${usuario.login}</h2>
							<input type="hidden" name="id" value="${usuario.id }" />
						</c:if>
						<hr style="border-color: black;">
						<div class="form-group">
							<label for="login">Login</label> <input type="text"
								class="form-control" id="login" name="login"
								value="${usuario.login }" placeholder="Login">
						</div>
						<div class="form-group">
							<label for="senha">Senha</label> <input type="text"
								class="form-control" id="senha" name="senha"
								value="${usuario.senha }" placeholder="Login">
						</div>
						<button class="btn btn-success" type="submit">Adicionar</button>
					</form>
				</section>
			</div>
			<div class="col-md-3"></div>
		</div>
		<hr style="border-color: black;">
		<div class="row">
			<div class="col-md-12">
				<section>
					<table class="text-center table table-bordered table-responsive">
						<thead>
							<tr>
								<th class="text-center">Login</th>
								<th class="text-center">Senha</th>
								<th class="text-center"><i class="fa fa-cog"></i></th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="usuario" items="${usuarios}">
								<tr>
									<td>${usuario.login}</td>
									<td>${usuario.senha}</td>

									<td><a class="btn btn-success"
										href="mvc?logica=BuscarUsuario&&id=${usuario.id}"
										title="Alterar Usuário"><i class="fa fa-refresh"></i></a> <i
										class="fa fa-arrows-h"></i> <a class="btn btn-danger"
										href="mvc?logica=RemoverUsuario&&id=${usuario.id}"
										title="Deletar Usuário"><i class="fa fa-trash"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</section>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<p class="text-center">
				Projeto no <a
					href="https://github.com/internetbcsiufsm/appRevisaoJavaWeb/"><i
					class="fa fa-github fa-3x"></i></a>
			</p>
		</div>
	</footer>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>