<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/public.css">
    <!--<link rel="stylesheet" href="css/index.css">-->
    <script src="js/jquery-1.12.4.js"></script>
    <style>
        #header{
            height: 40px;
            background-color:cadetblue;
        }
        .w{
            width: 1200px;

            /*background-color: #4cae4c;*/
            margin: 0 auto;
        }
        .daohang{
            float: left;
            display: block;
            line-height: 40px;
            /*margin: 0 auto;*/
        }
        .daohang a{
            float: left;
            /*margin-left: 10px;*/
           display: inline-block;
            margin-left: 5px;
            color: #f3f3f3;
            
        }
        .daohang a:hover{
            color: red;
        }
        .daohang span{
            float: left;
            margin-left: 5px;
            /*line-height: 40px;*/
        }
        .daohangyou{
            line-height: 40px;
        }
        .daohangyou a{
            float: left;
            display: inline-block;
            margin-left: 5px;
            color: #f3f3f3;
        }
        .daohangyou span{
            float: left;
            margin-left: 5px;
        }
        #top-top{
            height: 120px;
            background-color:red;
            margin: 0 auto  ;
            width: 1200px;
        }
        #logo h1{
            line-height: 120px;
            height: 56px;
            width: 56px;
        }
        #logo h1 a{
            display: block;
            /*height: 56px;*/
            /*width: 56px;*/
            background: url(images/logo.png) no-repeat center;
            /*line-height: 120px;*/
            text-indent: -999px;
            overflow: hidden;
        }
    </style>
</head>

<div id="header">
    <div class="w">
    <div class="fl-f_left">
        <div class="daohang">
            <a href="#">小米商</a>
            <span>|</span>
            <a href="#">小米商</a>
            <span>|</span>
            <a href="#">小米商</a>
            <span>|</span>
            <a href="#">小米商</a>
            <span>|</span>
            <a href="#">小米商</a><span>|</span>
            <a href="#">小米商</a><span>|</span>
            <a href="#">小米商</a><span>|</span>
            <a href="#">小米商</a><span>|</span>
            <a href="#">小米商</a><span>|</span>
        </div>
    </div>
    <div class="fr_f-right daohangyou">
        <a href="#">登录</a><span>|</span>
        <a href="#">注册</a><span>|</span>
        <a href="#">购物车</a><span>|</span>
    </div>
    </div>
</div>

<div id="top-top">
    <div id="logo">
        <h1>
            <a href="#">小米在线</a>
        </h1>
    </div>
</div>
<body>





</body>
</html>