<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>App Revisão Internet B</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="card card-container">
        <img id="perfil-img" class="perfil-img-card" src="http://sites.multiweb.ufsm.br/sisint/images/banner.png" />
        <p id="nome-perfil" class="nome-perfil-card">
            <c:if test="${not empty msg }">
                <p class="alert alert-danger">Usuário ou Senha inválidos <i class="fa fa-remove"></i></p>
            </c:if>
        </p>
        <form class="form-signin" action="/appRevisaoJavaWeb/mvc?logica=LogarLogica" method="post">
            <input type="text" id="login" name="login" class="form-control" placeholder="Login" required autofocus/>
            <input type="password" id="senha" class="form-control" placeholder="Senha" name="senha" required/>
            <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit" name="opcao" value="logar">Logar</button>
        </form><!-- /form -->
        <br>
        <a href="https://github.com/internetbcsiufsm/appRevisaoJavaWeb/" class="forgot-password" title="Acessar o Projeto no GITHUB">
            <p class="text-center"><i class="fa fa-align-center fa fa-github fa-3x"></i></p>
        </a>

    </div>
</div>
</body>
</html>