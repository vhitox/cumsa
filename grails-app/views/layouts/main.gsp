<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <!-- Vendor CSS Files -->
    <%-- <asset:stylesheet src="vendor/aos/aos.css" rel="stylesheet"/> --%>
    <%-- <asset:stylesheet src="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    --%>
    <asset:stylesheet src="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <%-- <asset:stylesheet src="vendor/boxicons/css/boxicons.min.css" rel="stylesheet"/>
    <asset:stylesheet src="vendor/glightbox/css/glightbox.min.css" rel="stylesheet"/>
    <asset:stylesheet src="vendor/swiper/swiper-bundle.min.css" rel="stylesheet"/> --%>

<!-- Template Main CSS File -->
    <asset:stylesheet src="style.css" rel="stylesheet"/>
    
    <%-- <asset:stylesheet src="application.css"/> --%>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <g:layoutHead/>
</head>

<body>
<!-- ======= Header ======= -->
    <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

        <div class="logo">
        <h1 class="text-light"><a href="index.html"><span>Coursera - UMSA</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
        </div>
        <nav id="navbar" class="navbar">
            
            <ul>
                <sec:ifLoggedIn>
                    <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                    <li><a class="nav-link scrollto" href="#about">About Us</a></li>
                    <li><a class="nav-link scrollto" href="#services">Services</a></li>
                    <li><a class="nav-link scrollto" href="#portfolio">Portfolio</a></li>
                    <li><a class="nav-link scrollto" href="#team">Team</a></li>
                    <li class="dropdown"><a href="#"><span><sec:loggedInUserInfo field="username"/></span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a href="#">Drop Down 1</a></li>
                        <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                        <ul>
                            <li><a href="#">Deep Drop Down 1</a></li>
                            <li><a href="#">Deep Drop Down 2</a></li>
                            <li><a href="#">Deep Drop Down 3</a></li>
                            <li><a href="#">Deep Drop Down 4</a></li>
                            <li><a href="#">Deep Drop Down 5</a></li>
                        </ul>
                        </li>
                        <li><a href="#">Drop Down 2</a></li>
                        <li><a href="#">Drop Down 3</a></li>
                        <li><a href="#">Drop Down 4</a></li>
                    </ul>
                    </li>
                    <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                    <li>
                        <g:form controller="logout">
                            <g:submitButton class="getstarted scrollto" name="Submit" value="Cerrar sesión" style="color:gray; border:none; color: white;" />
                        </g:form>                        
                    </li>
                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <li>                      
                        <a href="<g:createLink uri='/'/>" class="nav-link scrollto active">Home</a>                        
                    </li>
                    <li>                        
                        <g:link controller="auth" action="login" class="getstarted scrollto">Iniciar sesion</g:link>
                    </li>                    
                </sec:ifNotLoggedIn>
                
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
    </div>
    </header>
<!-- End Header -->
<div class="container px-1 py-5 mx-auto mt-5"> 
<g:layoutBody/>
</div>
<!-- ======= Footer ======= -->
<footer id="footer">       
    <div class="container py-4">
        <div class="copyright">
            &copy; Copyright <strong><span>DIPGIS</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/ninestars-free-bootstrap-3-theme-for-creative/ -->
        Designed by <a href="https://bootstrapmade.com/">USI - DIPGIS</a>
        </div>
    </div>
</footer><!-- End Footer -->
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<asset:javascript src="application.js"/>

<!-- Vendor JS Files -->
  <%-- <asset:javascript src="vendor/aos/aos.js"/> --%>
  <%-- <asset:javascript src="vendor/bootstrap/js/bootstrap.bundle.min.js"/> --%>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <%-- <asset:javascript src="vendor/glightbox/js/glightbox.min.js"/>
  <asset:javascript src="vendor/isotope-layout/isotope.pkgd.min.js"/>
  <asset:javascript src="vendor/php-email-form/validate.js"/>
  <asset:javascript src="vendor/swiper/swiper-bundle.min.js"/> --%>

<!-- Template Main JS File -->
   <%--  <asset:javascript src="main.js"/> --%>
</body>
</html>