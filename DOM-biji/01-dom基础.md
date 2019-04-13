<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>京东正品</title>
</head>
<body>
    <input type="button" value="显示效果" id="bt">
    <a id="i1" href="baidu"></a>
    <input type="button" value="显示效果" id="bt1">
    <input type="button" value="显示效果" id="bt3">
    <img src="zhonggditu.png" alt="哈哈" title="地图"/><br>
    <input type="button" value="显示效果" id="t4">
    <input type="text" value=""><br>
    <input type="text" value=""><br>
    <input type="text" value=""><br>
    <input type="text" value=""><br>
    <div id="i2">
        <p>帅</p>
    <p>帅</p>
    <p>帅</p>
    </div>
    <div id="i3">
        <p>不帅</p>
        <p>不帅</p>
        <p>不帅</p>
    </div>
    <script>
        document.getElementById("bt").onclick=function () {
            // document.getElementById("i1").href="chuanzhi";
            // document.getElementById("i1").innerText="haha";
           var tag=document.getElementById("i1");
            tag.href="chuanzhi";
            tag.innerText="haha";
        };
        document.getElementById("bt1").onclick=function () {
            var ps = document.getElementsByTagName("p");
            for(var i=0;i<ps.length;i++){
                ps[i].innerText="我就是帅气"
            }
        };
        document.getElementById("bt3").onclick=function () {
            var img_g=document.getElementsByTagName("img");
            img_g[0].alt="不哈哈";
            img_g[0].title="你来打我啊";
        }
        document.getElementById("t4").onclick=function () {
            var inputs=document.getElementsByTagName("input");
            for(var i=0;i<inputs.length;i++){
                inputs[i].value="对吗?";
            }
        }
    </script>

</body>
</html>