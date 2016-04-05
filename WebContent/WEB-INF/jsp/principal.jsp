<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <title>Principal</title>

    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><i class="fa fa-desktop"></i> App Internet B</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="mvc?logica=RedirecionaCadastraUsuarioLogica"><i class="fa fa-users"></i> Cadastrar Usuário</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Bem-Vindo - <i class="fa fa-user"></i> ${usuario.login} <i class="fa fa-check"></i></a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<footer class="footer">
    <div class="container">
        <p class="text-center">Projeto no <a href="https://github.com/internetbcsiufsm/appRevisaoJavaWeb/"><i class="fa fa-github fa-3x"></i></a></p>
     </div>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

</body>
</html>