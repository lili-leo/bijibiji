<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        li{
            float: left;
            list-style: none;
        }
    </style>
</head>
<body>
<ul>
    <li><a href="#"></a>1</li>
    <li><a href="#"></a>2</li>
    <li><a href="#"></a>3</li>
</ul>
<a href="baidu" id="i2">百度</a>
<script>
    document.getElementById("i2").onclick=function () {
        return false
    }
</script>

</body>
</html>