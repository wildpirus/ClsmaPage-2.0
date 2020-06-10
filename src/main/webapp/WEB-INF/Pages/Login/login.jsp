<%@page language="Java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>

        <script language="JavaScript" type="text/javascript">

            window.onload = iniciaDatos;

            function iniciaDatos() {
                $(document).ready(function () {
                    $('.login-info-box').fadeOut();
                    $('.login-show').addClass('show-log-panel');
                });


                $('.login-reg-panel input[type="radio"]').on('change', function () {
                    if ($('#log-login-show').is(':checked')) {
                        $('.register-info-box').fadeOut();
                        $('.login-info-box').fadeIn();

                        $('.white-panel').addClass('right-log');
                        $('.register-show').addClass('show-log-panel');
                        $('.login-show').removeClass('show-log-panel');

                    } else if ($('#log-reg-show').is(':checked')) {
                        $('.register-info-box').fadeIn();
                        $('.login-info-box').fadeOut();

                        $('.white-panel').removeClass('right-log');

                        $('.login-show').addClass('show-log-panel');
                        $('.register-show').removeClass('show-log-panel');
                    }
                });
            }
        </script>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <style><%@include file="login.css"%></style>

        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="login-reg-panel">
            <div class="login-info-box">
                <h2>Have an account?</h2>
                <p>Log in Here</p>
                <label id="label-register" for="log-reg-show">Login</label>
                <input type="radio" name="active-log-panel" id="log-reg-show"  checked="checked">
            </div>

            <div class="register-info-box">
                <h2>Don't have an account?</h2>
                <p>Sign up here is FREE</p>
                <label id="label-login" for="log-login-show">Register</label>
                <input type="radio" name="active-log-panel" id="log-login-show">
            </div>

            <div class="white-panel">
                <form method="POST" action="${pageContext.request.contextPath}/ServletControlador?accion=login">
                    <div class="login-show">
                        <h2>LOGIN</h2>
                        <input name="mail" type="text" placeholder="Email">
                        <input name="pass" type="password" placeholder="Password">
                        <input type="submit" value="Login">
                        <label id="label-login" for="log-login-show">${msg}</label>
                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=FPASS">Forgot password?</a>
                    </div>
                </form>

                <form method="POST" action="${pageContext.request.contextPath}/ServletControlador?accion=insert">
                    <div class="register-show">
                        <h2>REGISTER</h2>
                        <input id="email" name="emailregister" type="text" placeholder="Email">
                        <input id="password" name="passregister" type="password" placeholder="Password">
                        <input id="password2" type="password" placeholder="Confirm Password">
                        <input type="submit" value="Register" onclick="register()">
                    </div>
                </form>

                <script>
                    function register() {
                        var mail = document.getElementById('email').value;
                        var pass = document.getElementById('password').value;
                        var pass2 = document.getElementById('password2').value;

                        if (validarEmail(mail) === true) {
                            if (pass === pass2) {
                                console.log('Pasó');
                            } else {
                                alert("Contraseñas diferentes")
                            }
                        }
                    }

                    function validarEmail(valor) {
                        var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                        if (regex.test(valor)) {
                            //alert("La dirección de email " + valor + " es correcta.");
                            return true;
                        } else {
                            alert("La dirección de email es incorrecta.");
                            return false;
                        }
                    }
                </script>
            </div>
        </div>
    </body>
</html>


