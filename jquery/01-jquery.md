<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<ul>
    <li>111</li>
    <li>222</li>
    <li>333</li>
    <li>444</li>
    <li>555</li>
    <li>6666</li>
    <li>7777</li>
    <li>8888</li>
    <li>9999</li>
    <li>0000</li>
</ul>

<script src="jquery-1.12.4.js"></script>

<script>
    $(function () {
        //入口函数
        // $("li:even").css("backgroundColor","red")
        // $("li:eq(1)").css("backgroundColor","green")
        $("li").eq(3).css("backgroundColor","green")
        //筛选选择器
        $(this).children() //所有孩子标签
        $(this).next()  //下一个标签
        $(this).prev() //上一个标签
        $(this).parent()  //父标签
        $(this).siblings() //所有兄弟标签

    })
</script>
</body>
</html>