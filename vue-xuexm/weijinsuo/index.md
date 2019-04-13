<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1 user-scalable=0">
    <title>微金所</title>
    <!-- Bootstrap -->
    <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="lib/html5shiv/html5shiv-printshiv.min.js"></script>
    <script src="lib/respond/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
<!--顶部栏-->
<header class="wjs_tongBar hidden-sm hidden-xs">
    <div class="container">
        <div class="row">
            <div class="col-md-2">
                <a href="#" class="wsj_app">
                    <span class="wjs_icon wjs_icon_phone"></span>
                    <span>手机微金所</span>
                    <span class="glyphicon glyphicon-menu-down"></span>
                    <img src="images/code.jpg" alt="">
                </a>
            </div>
            <div class="col-md-5">
                <span class="wjs_icon  wjs_icon_tel"></span>
                <span>4006-89-4006（服务时间：9:00-21:00）</span>
            </div>
            <div class="col-md-2">
                <a href="#">常见问题</a>
                <a href="#">财富登陆</a>
            </div>
            <div class="col-md-3">
                <a href="#" class="btn btn-default btn-res">免费注册</a>
                <a href="#" class="btn btn-link btn-res-login">登录</a>
            </div>
        </div>
    </div>
</header>
<!--导航栏-->

<!--导航条  默认样式-->
<nav class="navbar wjs_nav">
    <!--流式布局 去掉-->
    <div class="container">
        <!--包含商标区域  和切换按钮，在移动端完全显示-->
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <!--切换按钮-->
            <!--collapsed  折叠-->
            <!--data-toggle="collapse" 声明折叠属性-->
            <!--data-target="#bs-example-navbar-coll  目标属性  &#45;&#45;选择权-->
            <!--aria-expanded="false" 代表提供给屏幕阅读器使用  盲人阅读-->
            <!--class="sr-only"   代表屏幕阅读 盲人阅读-->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                <span class="wjs_icon wjs_icon_logo"></span>
                <span class="wjs_icon wjs_icon_name"></span>
            </a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <!--默认导航-->
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">我要投资</a></li>
                <li><a href="#">我要借贷</a></li>
                <li><a href="#">平台介绍</a></li>
                <li><a href="#">金融专区</a></li>
                <li><a href="#">最新动态</a></li>
                <li><a href="#">微平台</a></li>
            </ul>
            <!--右对齐导航-->
            <ul class="nav navbar-nav navbar-right hidden-sm">
                <li><a href="#">个人中心</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<!--轮播图-->
<section class="wjs_banner">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <a href="#" class="pc_imgbox hidden-xs" style="background-image: url(images/slide_01_2000x410.jpg)"></a>
                <a href="#" class="m_imgbox hidden-lg hidden-md hidden-sm"><img src="images/slide_01_640x340.jpg" alt=""></a>
            </div>
            <div class="item">
                <a href="#" class="pc_imgbox hidden-xs" style="background-image: url(images/slide_02_2000x410.jpg)"></a>
                <a href="#" class="m_imgbox hidden-lg hidden-md hidden-sm"><img src="images/slide_02_640x340.jpg" alt=""></a>
            </div>
            <div class="item">
                <a href="#" class="pc_imgbox hidden-xs" style="background-image: url(images/slide_03_2000x410.jpg)"></a>
                <a href="#" class="m_imgbox hidden-lg hidden-md hidden-sm"><img src="images/slide_03_640x340.jpg" alt=""></a>
            </div>
            <div class="item">
                <a href="#" class="pc_imgbox hidden-xs" style="background-image: url(images/slide_04_2000x410.jpg)"></a>
                <a href="#" class="m_imgbox hidden-lg hidden-md hidden-sm"><img src="images/slide_04_640x340.jpg" alt=""></a><!--<img src="../images/slide_04_2000x410.jpg" alt="...">-->
            </div>

        </div>

        <!-- Controls -->
        <!--控制-->
        <!--data-slide="prev" 上一张-->
        <!--data-slide="next" 下一张-->
        <!--href="#carousel-example-generic"  控制目标-->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" ></span>
            <!--<span class="sr-only">Previous</span>-->
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" ></span>
            <!--<span class="sr-only">Next</span>-->
        </a>
    </div>
</section>
<!--信息-->
<section class="wjs_info"></section>
<!--预约-->
<section class="wjs_book"></section>
<!--产品-->
<section class="wjs_product"></section>
<!--新闻-->
<section class="wjs_news"></section>
<!--合作伙伴-->
<footer class="wjs_parter"></footer>



<script src="lib/jquery/jquery.min.js"></script>
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>