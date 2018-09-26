<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--<title>${pageTitle}</title>--%>
    <!-- Bootstrap core CSS -->
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/fontello.css"/>
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css"/>
</head>
<body>
<nav id="navbarBackground" class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <%--<a class="navbar-brand" href="#">AdminStrap</a>--%>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/home">Home</a></li>
                <li><a href="/aboutUs">About Us</a></li>
                <li><a href="/program">Programs</a></li>
                <li><a href="/camps/show">Camps</a></li>
                <li><a href="/applicants/form">Profile</a></li>
                <li><a href="/applications/form">Application</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/applicants/showAdmin">Applicants Admin</a></li>
                <li><a href="/camps/showAdmin">Camps Admin</a></li>
                <li><a href="/">Welcome to Summer Camp!</a></li>
                <li><a href="/login">Login</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<header id="header">
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <h1><icon class="icon-bar"></icon> Summer Camp </h1>
            </div>
        </div>
    </div>
</header>


