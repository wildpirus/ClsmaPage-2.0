<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Jekyll v3.8.6">
        <title>Profile</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/checkout/">

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/6c77045ddc.js" crossorigin="anonymous"></script>

        <!-- Favicons -->
        <link rel="apple-touch-icon" href="/docs/4.4/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
        <link rel="icon" href="/docs/4.4/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
        <link rel="icon" href="/docs/4.4/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
        <link rel="manifest" href="/docs/4.4/assets/img/favicons/manifest.json">
        <link rel="mask-icon" href="/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
        <link rel="icon" href="/docs/4.4/assets/img/favicons/favicon.ico">
        <meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
        <meta name="theme-color" content="#563d7c">
        <script>
            // Example starter JavaScript for disabling form submissions if there are invalid fields
            /*        
             (function () {
             'use strict';
             
             window.addEventListener('load', function () {
             // Fetch all the forms we want to apply custom Bootstrap validation styles to
             var forms = document.getElementsByClassName('needs-validation')
             
             // Loop over them and prevent submission
             Array.prototype.filter.call(forms, function (form) {
             form.addEventListener('submit', function (event) {
             if (form.checkValidity() === false) {
             event.preventDefault()
             event.stopPropagation()
             }
             form.classList.add('was-validated')
             }, false)
             })
             }, false)
             }())
             */
        </script>

        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>
        <!-- Custom styles for this template -->
        <style><%@include file="profile.css"%></style>
    </head>
    <body class="bg-light">
        <header>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/ServletControlador?accion=home&usuario=${usuario.idUsuario}"><i class="fab fa-gripfire"></i>Home<span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/ServletControlador?accion=lessons&usuario=${usuario.idUsuario}">Lecciones</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/ServletControlador?accion=test&usuario=${usuario.idUsuario}">Prueba</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/ServletControlador?accion=stadistics&usuario=${usuario.idUsuario}">Estadísticas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/ServletControlador?accion=help&usuario=${usuario.idUsuario}">Ayuda</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav px-3">
                        <li class="nav-item text-nowrap active">
                            <a class="nav-link" href="${pageContext.request.contextPath}/ServletControlador?accion=profile&usuario=${usuario.idUsuario}">${usuario.idUsuario}<i class="fas fa-user"><!--  Some content --></i></a>
                        </li>
                        <li class="nav-item text-nowrap">
                            <a class="nav-link" href="${pageContext.request.contextPath}/ServletControlador?accion=start">Sign out <i class="fas fa-sign-in-alt"><!--  Some content --></i></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <main>
            <div class="container">
                <div class="py-5 text-center">
                    <!--<img class="d-block mx-auto mb-4" src="/docs/4.4/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">-->
                    <h2>Update your profile</h2>
                    <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
                </div>

                <div class="row">
                    <div class="col-md-12 order-md-1 mb-4">
                        <form class="needs-validation" novalidate>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="firstName">First name</label>
                                    <input type="text" class="form-control" id="firstName" placeholder="" value="${usuario.nombre}" required>
                                    <div class="invalid-feedback">
                                        
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="lastName">Last name</label>
                                    <input type="text" class="form-control" id="lastName" placeholder="" value="${usuario.apellido}" required>
                                    <div class="invalid-feedback">
                                        
                                    </div>
                                </div>
                            </div>

                            <!--
                            <div class="mb-3">
                                <label for="username">Username</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">@</span>
                                    </div>
                                    <input type="text" class="form-control" id="username" placeholder="Username" required>
                                    <div class="invalid-feedback" style="width: 100%;">
                                        Your username is required.
                                    </div>
                                </div>
                            </div>
                            -->

                            <div class="mb-3">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" value="${usuario.email}" >
                                <div class="invalid-feedback">

                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" value="${usuario.clave}">
                                <div class="invalid-feedback">

                                </div>
                                <hr>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="show-pass">
                                    <label class="custom-control-label" for="show-pass">Mostrar Constraseña</label>
                                </div>
                            </div>
                            <!--
                            <div class="mb-3">
                                <label for="address">Address</label>
                                <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-5 mb-3">
                                    <label for="country">Country</label>
                                    <select class="custom-select d-block w-100" id="country" required>
                                        <option value="">Choose...</option>
                                        <option>United States</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select a valid country.
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="state">State</label>
                                    <select class="custom-select d-block w-100" id="state" required>
                                        <option value="">Choose...</option>
                                        <option>California</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please provide a valid state.
                                    </div>
                                </div>
                                <div class="col-md-3 mb-3">
                                    <label for="zip">Zip</label>
                                    <input type="text" class="form-control" id="zip" placeholder="" required>
                                    <div class="invalid-feedback">
                                        Zip code required.
                                    </div>
                                </div>
                            </div>
                            -->
                            <hr class="mb-4">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="same-address">
                                <label class="custom-control-label" for="same-address">Estas de acuerdo con mandar información sobre promociones de la compañia</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="save-info">
                                <label class="custom-control-label" for="save-info">Save this information for next time</label>
                            </div>
                            <hr class="mb-4">
                            <button class="btn btn-primary btn-lg btn-block" type="submit">Update</button>
                        </form>
                    </div>
                </div>
        </main>

        <footer class="my-5 pt-5 text-muted text-center text-small">
            <p class="mb-1">&copy; 2020-2022 BNT SAS</p>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">Privacy</a></li>
                <li class="list-inline-item"><a href="#">Terms</a></li>
                <li class="list-inline-item"><a href="#">Support</a></li>
            </ul>
        </footer>
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>'</script><script src="/docs/4.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
    <script src="form-validation.js"></script></body>
</html>
