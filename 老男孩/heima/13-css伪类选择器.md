<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        a:link{
            /*未访问的链接状态 */
            color：red;
            text-decoration: none;
        }
        a:visited{
        /*已访问过的链接*/
            color:olivedrab;
        }
        a:hover{
            /*实际开发用这个就好*/
            color:deepskyblue;
        }
        a:active{
        /*鼠标按住时候的样子*/
            color:brown;
        }
    </style>
</head>
<body>
     <div id="i">
         <span id="i1">你好啊</span>
     </div>
     <a href="baidu" >秒杀</a>
     

</body>
</html>