<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>


<script>
    var xhl;
    // if (window.XMLHttpRequest) {
    //     xhl = new XMLHttpRequest();
    // } else {
    //     xhl = new ActiveXObject("Microsoft.XMLHTTP");
    // }
    // 三元简写
    var xhl = new window.XMLHttpRequest ? new window.XMLHttpRequest() : new ActiveXObject("Microsoft.XMLHTTP")
    //  状态0，请求初始化 xhl.readystate==0
    xhl.open("GET", data);
    //  状态1，打开请求 xhl.readystate==1
    xhl.send();


    xhl.onreadystatechange = function () {
        if (xhl.readyState == 4 && xml.status == 200) {
            document.getElementById("i2").innerHTML = xhl.responseText;
        }
    };

    // 状态0，请求初始化
    // 状态1，打开请求
    //  状态2，发送请求打开响应头
    // 状态3， 请求处理
    // 状态4，请求完成
    var xhr=new window.XMLHttpRequest?new window.XMLHttpRequest():new ActiveXObject("Microsoft.XMLHTTP");
    xhr.open("GET","url")
    xhr.send()
    xhr.onreadystatechange=function(){

    }
    

</script>
</body>
</html>