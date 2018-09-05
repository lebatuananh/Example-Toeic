<%--
  Created by IntelliJ IDEA.
  User: tuana
  Date: 9/5/2018
  Time: 9:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglib.jsp" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1"/>
    <meta name="msapplication-tap-highlight" content="no">

    <meta name="mobile-web-app-capable" content="yes">
    <meta name="application-name" content="Milestone">

    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Milestone">

    <meta name="theme-color" content="#4C7FF0">
    <title>Login Page</title>

    <!-- page stylesheets -->
    <!-- end page stylesheets -->

    <!-- build:css({.tmp,app}) styles/app.min.css -->
    <link rel="stylesheet" href="<c:url value='../template/admin/assets/vendor/bootstrap/dist/css/bootstrap.css' /> "/>
    <link rel="stylesheet"
          href="<c:url value='../template/admin/assets/vendor/PACE/themes/blue/pace-theme-minimal.css' />"/>
    <link rel="stylesheet" href="<c:url value='../template/admin/assets/vendor/font-awesome/css/font-awesome.css' />"/>
    <link rel="stylesheet" href="<c:url value='../template/admin/assets/vendor/animate.css/animate.css' />"/>
    <link rel="stylesheet" href="<c:url value='../template/admin/assets/styles/app.css' />" id="load_styles_before"/>
    <link rel="stylesheet" href="<c:url value='../template/admin/assets/styles/app.skins.css' />"/>
    <!-- endbuild -->
</head>
<body>
<div class="app no-padding no-footer layout-static">
    <div class="session-panel">
        <div class="session">
            <div class="session-content">
                <div class="card card-block form-layout">
                    <form role="form" action="index.html" id="validate">
                        <div class="text-xs-center m-b-3">
                            <img src="<c:url value='../template/admin/assets/images/logo-icon.png'/> " height="80"
                                 alt="" class="m-b-1"/>
                            <h5>
                                <fmt:message key="label.test" bundle="${lang}"/>
                            </h5>
                            <p class="text-muted">
                                Sign in with your app id to continue.
                            </p>
                        </div>
                        <fieldset class="form-group">
                            <label for="username">
                                Enter your username
                            </label>
                            <input type="text" class="form-control form-control-lg" id="username" placeholder="username"
                                   required/>
                        </fieldset>
                        <fieldset class="form-group">
                            <label for="password">
                                Enter your password
                            </label>
                            <input type="password" class="form-control form-control-lg" id="password"
                                   placeholder="********" required/>
                        </fieldset>
                        <label class="custom-control custom-checkbox m-b-1">
                            <input type="checkbox" class="custom-control-input">
                            <span class="custom-control-indicator"></span>
                            <span class="custom-control-description">Stay logged in</span>
                        </label>
                        <button class="btn btn-primary btn-block btn-lg" type="submit">
                            Login
                        </button>
                        <div class="divider">
                  <span>
                    OR
                  </span>
                        </div>
                        <div class="text-xs-center">
                            <p>
                                Login with your social account
                            </p>
                            <button href="javascript:;" class="btn btn-icon-icon btn-facebook btn-lg m-b-1 m-r-1">
                                <i class="fa fa-facebook">
                                </i>
                            </button>
                            <button href="javascript:;" class="btn btn-icon-icon btn-github btn-lg m-b-1 m-r-1">
                                <i class="fa fa-github">
                                </i>
                            </button>
                            <button href="javascript:;" class="btn btn-icon-icon btn-google btn-lg m-b-1 m-r-1">
                                <i class="fa fa-google-plus">
                                </i>
                            </button>
                            <button href="javascript:;" class="btn btn-icon-icon btn-linkedin btn-lg m-b-1 m-r-1">
                                <i class="fa fa-linkedin">
                                </i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <footer class="text-xs-center p-y-1">
                <p>
                    <a href="extra-forgot.html">
                        Forgot password?
                    </a>
                    &nbsp;&nbsp;·&nbsp;&nbsp;
                    <a href="extra-signup.html">
                        Create an account
                    </a>
                </p>
            </footer>
        </div>

    </div>
</div>


<script type="text/javascript">
    window.paceOptions = {
        document: true,
        eventLag: true,
        restartOnPushState: true,
        restartOnRequestAfter: true,
        ajax: {
            trackMethods: ['POST', 'GET']
        }
    };
</script>

<!-- build:js({.tmp,app}) scripts/app.min.js -->
<script src="<c:url value='../template/admin/assets/vendor/jquery/dist/jquery.js' />"></script>
<script src="<c:url value='../template/admin/assets/vendor/PACE/pace.js' />"></script>
<script src="<c:url value='../template/admin/assets/vendor/tether/dist/js/tether.js' />"></script>
<script src="<c:url value='../template/admin/assets/vendor/bootstrap/dist/js/bootstrap.js' />"></script>
<script src="<c:url value='../template/admin/assets/vendor/fastclick/lib/fastclick.js' />"></script>
<script src="<c:url value='../template/admin/assets/scripts/constants.js' />"></script>
<script src="<c:url value='../template/admin/assets/scripts/main.js' />"></script>
<!-- endbuild -->

<!-- page scripts -->
<script src="<c:url value='../template/admin/assets/vendor/jquery-validation/dist/jquery.validate.min.js'/> "></script>
<!-- end page scripts -->

<!-- initialize page scripts -->
<script type="text/javascript">
    $('#validate').validate();
</script>
<!-- end initialize page scripts -->
</body>
</html>
