<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="register"/>
    <title></title>
</head>
<body>
    <div class="row">
        <div class="col-6">
        <div class="card shadow-lg p-3 mb-5 bg-body rounded text-center pt-5" style="min-height:500px;">                    
            <div class="card-body">
                <h3 class="card-title">Casi listo : ${user.name}</h3>
                <p class="card-text">Para activar su cuenta, haga click en el enlace enviado a:</p>
                <b>${user.email}</p>
                <h5 class="card-text">Vaya a su bandeja de entrada </h5>
                <p>¿No reciobio el email? </p>
                <g:createLink uri="/" absolute="true"/>
                <g:set var="url" value="${createLink(uri: "/", absolute: true).replace("http","ws")}"/>
                ${url}
                
            </div>
        </div>
        </div>
        <div class="col-6"></div>
    </div>
<script type="text/javascript">
    var webSocket = new WebSocket("${url}maincumsa/usuarios.json");
</script>    
</body>    
</html>