
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Hello MUI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

    <!--标准mui.css-->
    <link rel="stylesheet" href="./mui/css/mui.min.css">
    <!--App自定义的css-->
    <link rel="stylesheet" type="text/css" href="../css/app.css"/>
</head>

<body>
<div id="slider" class="mui-slider" >
    <div class="mui-slider-group mui-slider-loop">
        <!-- 额外增加的一个节点(循环轮播：第一个节点是最后一张轮播) -->
        <div class="mui-slider-item mui-slider-item-duplicate">
            <a href="#">
                <img src="images/20190316224900.png">
            </a>
        </div>
        <!-- 第一张 -->
        <div class="mui-slider-item">
            <a href="#">
                <img src="images/20190316224914.png">
            </a>
        </div>
        <!-- 第二张 -->
        <div class="mui-slider-item">
            <a href="#">
                <img src="images/20190316224923.png">
            </a>
        </div>
        <!-- 第三张 -->
        <div class="mui-slider-item">
            <a href="#">
                <img src="images/20190316224914.png">
            </a>
        </div>
        <!-- 第四张 -->
        <!-- 额外增加的一个节点(循环轮播：最后一个节点是第一张轮播) -->
        <div class="mui-slider-item mui-slider-item-duplicate">
            <a href="#">
                <img src="images/20190316224914.png">
            </a>
        </div>
    </div>
    <div class="mui-slider-indicator">
        <div class="mui-indicator mui-active"></div>
        <div class="mui-indicator"></div>
        <div class="mui-indicator"></div>
    </div>
</div>
<script src="./mui/js/mui.min.js"></script>
<script type="text/javascript" charset="utf-8">
  mui.init({
    swipeBack:true //启用右滑关闭功能
  });
  mui("#slider").slider({
    interval:3000//自动轮播周期，若为0则不自动播放，默认为0；
  });
</script>
</body>

</html>