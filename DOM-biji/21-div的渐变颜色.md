<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        div{
            height: 300px;
            width: 300px;
            background-color: red;
            margin-bottom: 10px;
        }
    </style>
    
</head>
<body>
     <div id="dv"></div>
     <input type="button" value="渐变按钮" id="i2">

     <script src="common.js"></script>
     <script>
         my$("i2").onclick=function () {
             var opacity1=10;
             var timeid=setInterval(function () {
                 opacity1-=1;
                 my$("dv").style.opacity=opacity1/10;
                 if(opacity1<=0){
                     clearInterval(timeid)
                 }

             },200)


         }

     </script>
</body>
</html>