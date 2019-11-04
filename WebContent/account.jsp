<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" href="css/site.css">

    <meta charset="ISO-8859-1">
    <title>Accounts</title>
</head>

<body>

    <div class="container white">

        <jsp:include page="/WEB-INF/common/nav_before.jsp"></jsp:include>

        <!-- end of nav bar -->

        <!--  <div class="row">

            <div class="col-md-12">


                <div class="jumbotron no-bg no-color no fw no-padding">
                    <p class="display-5" style="color:black;padding:2rem 0 0 1rem;">Welcome to Team Messenger</p>

                </div>
            </div>
        </div> -->

        <div class="row">
            <c:if test="${created eq true}">
                <div class="col-md-12">
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Success</strong> You have successfully registered.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </c:if>
            <c:if test="${ex eq true}">
                <div class="col-md-12">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Error!</strong> Cannot register at this time. Please try after some time.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </c:if>
            <c:if test="${exists eq true}">
                <div class="col-md-12">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Error!</strong> There is already an account with the same email id.
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </c:if>
        </div>

        <div class="row">

            <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">

                <div class="outer">

                    <fieldset>
                        <legend>Login to you account</legend>
                        <form action="" method="" novalidate class="p-top-20" id="loginForm">
                            <div class="form-group">

                                <div class="form-group">
                                    <!-- <label for="loginEmail">Email address</label> -->
                                    <input type="email" class="form-control" id="loginEmail" name="loginEmail"
                                        placeholder="Enter your email">

                                </div>

                                <div class="form-group">
                                    <!-- <label for="loginPassword">Password</label> -->
                                    <input type="password" class="form-control" id="loginPassword" name="loginPassword"
                                        placeholder="Enter your password">

                                </div>

                                <button class="btn btn-primary" type="submit">Login</button>
                            </div>

                        </form>
                    </fieldset>
                </div>
            </div>

            <!-- login ends -->

            <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">

                <div class="outer">

                    <fieldset>

                        <legend>Register for a new account</legend>
                        <form action="register.user" method="post" novalidate class="p-top-20" id="registerForm">
                            <div class="form-group">

                                <div class="form-group">
                                    <!-- <label for="firstName">First Name</label> -->
                                    <input type="text" class="form-control" id="firstName" name="firstName"
                                        placeholder="Enter your first name">

                                </div>
                                <div class="form-group">
                                    <!-- <label for="lastName">Last Name</label> -->
                                    <input type="text" class="form-control" id="lastName" name="lastName"
                                        placeholder="Enter your email">

                                </div>
                                <div class="form-group">
                                    <!-- <label for="email">Email address</label> -->
                                    <input type="email" class="form-control" id="email" name="email"
                                        placeholder="Enter your email">

                                </div>

                                <div class="form-group">
                                    <!-- <label for="password">Password</label> -->
                                    <input type="password" class="form-control" id="password" name="password"
                                        placeholder="Enter your password">

                                </div>

                                <div class="form-group">
                                    <!-- <label for="confirmPassword">Confirm Password</label> -->
                                    <input type="password" class="form-control" id="confirmPassword"
                                        name="confirmPassword" placeholder="Re-enter your password">

                                </div>

                                <button class="btn btn-primary" type="submit">Register</button>
                            </div>

                        </form>
                    </fieldset>
                </div>
            </div>

            <!-- registration ends -->
        </div>

        <div class="row">
        	<div class="col-md-12">
        	<footer id="footer">
            <div class="row">
                <div class="col-lg-12">

                    <ul class="list-unstyled">
                        <li class="float-lg-right"><a href="#top">Back to top</a></li>
                        <li><a href="https://blog.bootswatch.com"
                                onclick="pageTracker._link(this.href); return false;">Blog</a></li>
                        <li><a href="https://blog.bootswatch.com/rss/">RSS</a></li>
                        <li><a href="https://twitter.com/bootswatch">Twitter</a></li>
                        <li><a href="https://github.com/thomaspark/bootswatch/">GitHub</a></li>
                        <li><a href="../help/#api">API</a></li>
                        <li><a href="../help/#donate">Donate</a></li>
                    </ul>
                    <p>Made by <a href="https://thomaspark.co">Thomas Park</a>.</p>
                    <p>Code released under the <a
                            href="https://github.com/thomaspark/bootswatch/blob/master/LICENSE">MIT License</a>.</p>
                    <p>Based on <a href="https://getbootstrap.com" rel="nofollow">Bootstrap</a>. Icons from <a
                            href="https://fontawesome.com/" rel="nofollow">Font Awesome</a>. Web fonts from <a
                            href="https://fonts.google.com/" rel="nofollow">Google</a>.</p>

                </div>
            </div>

        </footer>
        <!-- footer ends -->
        	</div>
        </div>
        
    </div>




    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/additional-methods.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="js/site.js"></script>
</body>

</html>