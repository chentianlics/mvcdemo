<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>user</title>
    <head runat="server">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
        <title>用户登录</title>
        <!-- Bootstrap -->
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="/css/bootstrapValidator.css">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
</head>
<body>
<nav class="navbar navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">个人信息</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">已登录<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">登录</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">注册</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.nav-collapse -->
    </div>
    <!-- /.container -->
</nav>
<!-- /.navbar -->
<div style="height:100px;"></div>
<div class="container">
    <div class="row">
        <section>
            <div class="page-header">
                <h3>用户信息：</h3>
            </div>
            <form id="formbody" action="/api/dologin" method="get" class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-sm-2 col-xs-2 col-sm-offset-2 control-label">唯一id</label>
                    <div class="col-sm-4 col-xs-10">
                        ${requestScope.user.id}
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-xs-2 col-sm-offset-2 control-label">邮箱</label>
                    <div class="col-sm-4 col-xs-10">
                        ${requestScope.user.email}
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-xs-2 col-sm-offset-2 control-label">账号</label>
                    <div class="col-sm-4 col-xs-10">
                        ${requestScope.user.username}
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-xs-2 col-sm-offset-2 control-label">权限</label>
                    <div class="col-sm-4 col-xs-10">
                        ${requestScope.user.role}
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 col-xs-2 col-sm-offset-2 control-label">手机</label>
                    <div class="col-sm-4 col-xs-10">
                        ${requestScope.user.mobile}
                    </div>
                </div>
<%--                <div class="form-group">--%>
<%--                    <div class="col-sm-4 col-sm-offset-4 col-xs-8 col-xs-offset-2">--%>
<%--                        <!--button type="submit" name="submit" class="btn btn-primary">登&emsp;录</button-->--%>
<%--                        <input type="submit" class="btn btn-primary" value="登&emsp;录"/>--%>
<%--                        <button type="button" class="col-sm-offset-2 col-xs-offset-2 btn btn-primary" id="resetBtn">重&emsp;置</button>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </form>
        </section>
    </div>
</div>
</body>
</html>