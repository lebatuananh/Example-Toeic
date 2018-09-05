<%--
  Created by IntelliJ IDEA.
  User: tuana
  Date: 9/1/2018
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<!-- top header -->
<nav class="header navbar">
    <div class="header-inner">
        <div class="navbar-item navbar-spacer-right brand hidden-lg-up">
            <!-- toggle offscreen menu -->
            <a href="javascript:;" data-toggle="sidebar" class="toggle-offscreen">
                <i class="material-icons">menu</i>
            </a>
            <!-- /toggle offscreen menu -->
            <!-- logo -->
            <a class="brand-logo hidden-xs-down">
                <img src="<c:url value='../template/admin/assets/images/logo_white.png'/> " alt="logo"/>
            </a>
            <!-- /logo -->
        </div>
        <a class="navbar-item navbar-spacer-right navbar-heading hidden-md-down" href="#">
            <span>Dashboard</span>
        </a>
        <div class="navbar-search navbar-item">
            <form class="search-form">
                <i class="material-icons">search</i>
                <input class="form-control" type="text" placeholder="Search"/>
            </form>
        </div>
        <div class="navbar-item nav navbar-nav">
            <div class="nav-item nav-link dropdown">
                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                    <span>English</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="javascript:;">English</a>
                    <a class="dropdown-item" href="javascript:;">Russian</a>
                </div>
            </div>
        </div>
    </div>
</nav>
<!-- /top header -->
