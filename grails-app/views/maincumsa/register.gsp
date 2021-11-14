<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="register"/>
    <title></title>
</head>
<body>

<div class="col-4">        
        <h5>Por favor, complete el formulario</h5>        

        <div class="card shadow p-3 mb-5 bg-body rounded">
        <div class="card-header">
            Datos personales
        </div>
        <div class="card-body">
            <g:form action="saveUser" controller="maincumsa" class="needs-validation"> 
            <div class="mb-3">
                <label for="nombre" class="form-label">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-person-fill" viewBox="0 0 16 16">
                    <path d="M12 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm-1 7a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm-3 4c2.623 0 4.146.826 5 1.755V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-1.245C3.854 11.825 5.377 11 8 11z"/>
                </svg>
                    Nombre Completo
                </label>
                <input type="text" name="name" class="form-control" id="nombre" required>
                <div id="validationServer03Feedback" class="invalid-feedback">
                    Dato requerido
                </div>
            </div>
            <div class="mb-3">
                <label for="cedula" class="form-label">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-credit-card-2-front-fill" viewBox="0 0 16 16">
                    <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2.5 1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h2a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-2zm0 3a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zm0 2a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1h-1zm3 0a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1h-1zm3 0a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1h-1zm3 0a.5.5 0 0 0 0 1h1a.5.5 0 0 0 0-1h-1z"/>
                    </svg>
                    Cedula de identidad
                </label>                
                <input type="text" name="ci" class="form-control" id="cedula" required>     
                <div id="validationServer03Feedback" class="invalid-feedback">
                    Dato requerido
                </div>
            </div>           
            <div class="mb-3">
                <label for="username" class="form-label">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
                </svg>
                Correo electrónico</label>
            
                <input type="email" name="username" class="form-control" id="username" aria-describedby="emailHelp" required>     
                <div id="validationServer03Feedback" class="invalid-feedback">
                    Dato requerido
                </div>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-key-fill" viewBox="0 0 16 16">
                    <path d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                    </svg>
                    Contraseña</label>
                <input type="password" name="password" class="form-control" id="password">
                <div id="validaPass" class="xxinvalid-feedback">                    
                </div>
            </div>
            <div class="mb-3">
                <label for="password_repeat" class="form-label">Repita su contraseña</label>
                <input type="password" class="form-control" id="password_repeat">
            </div>          
                <button type="submit" class="btn text-white" style="width: 100%; background-color: #EE7843;">Registrar</button>              
        </g:form>
        </div>
        </div>        
    </div>  
<script type="text/javascript">
    $(document).ready(function(){        
        function valida(){        
            alert("OOOO");
            var pass = $("#password").val();
            var vpass = $("#password_repeat").val();
            if(pass != vpass){               
                $("validaPass").html("La contrasena no coincide");
                return false;
            }
            return false;
        }
    });
</script>
</body>
</html>