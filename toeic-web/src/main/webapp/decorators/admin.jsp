<%--
  Created by IntelliJ IDEA.
  User: tuana
  Date: 9/1/2018
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title><dec:title default="Admin Page"/></title>
    <!-- page stylesheets -->
    <link rel="stylesheet"
          href="<c:url value='../template/admin/assets/vendor/bower-jvectormap/jquery-jvectormap-1.2.2.css'/> "/>
    <!-- end page stylesheets -->

    <!-- build:css({.tmp,app}) styles/app.min.css -->
    <link rel="stylesheet" href="<c:url value='../template/admin/assets/vendor/bootstrap/dist/css/bootstrap.css'/>"/>
    <link rel="stylesheet"
          href="<c:url value='../template/admin/assets/vendor/PACE/themes/blue/pace-theme-minimal.css' />"/>
    <link rel="stylesheet" href="<c:url value='../template/admin/assets/vendor/font-awesome/css/font-awesome.css' />"/>
    <link rel="stylesheet" href="<c:url value='../template/admin/assets/vendor/animate.css/animate.css' />"/>
    <link rel="stylesheet" href="<c:url value='../template/admin/assets/styles/app.css' />" id="load_styles_before"/>
    <link rel="stylesheet" href="<c:url value='../template/admin/assets/styles/app.skins.css' />"/>
    <!-- endbuild -->
    <dec:head/>
</head>
<body>
<div class="app">
    <%@include file="/common/admin/sidebar.jsp" %>
    <div class="main-panel">
        <%@ include file="/common/admin/header.jsp" %>
        <div class="main-content">
            <!--Begin Body-->
            <dec:body/>
            <!--End Body-->
            <%@include file="/common/admin/footer.jsp" %>
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
<script src="<c:url value='../template/admin/assets/vendor/flot/jquery.flot.js' />"></script>
<script src="<c:url value='../template/admin/assets/vendor/flot/jquery.flot.resize.js' />"></script>
<script src="<c:url value='../template/admin/assets/vendor/flot/jquery.flot.stack.js' />"></script>
<script src="<c:url value='../template/admin/assets/vendor/flot-spline/js/jquery.flot.spline.js' />"></script>
<script src="<c:url value='../template/admin/assets/vendor/bower-jvectormap/jquery-jvectormap-1.2.2.min.js' />"></script>
<script src="<c:url value='../template/admin/assets/data/maps/jquery-jvectormap-us-aea.js' />"></script>
<script src="<c:url value='../template/admin/assets/vendor/jquery.easy-pie-chart/dist/jquery.easypiechart.js' />"></script>
<script src="<c:url value='../template/admin/assets/vendor/noty/js/noty/packaged/jquery.noty.packaged.min.js' />"></script>
<script src="<c:url value='../template/admin/assets/scripts/helpers/noty-defaults.js' />"></script>
<!-- end page scripts -->

<!-- initialize page scripts -->
<script src="<c:url value='../template/admin/assets/scripts/dashboard/dashboard.js' />"></script>
<!-- end initialize page scripts -->
</body>
</html>