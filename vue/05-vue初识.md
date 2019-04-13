<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div id ="app">
    <p>{{msg}}</p>
</div>

<script src="lib/vue.js"></script>
<script>
    new Vue({
        el:"#app",
        data:{
            //存数据
            msg:"欢迎来到vue"
        }
    })
</script>


</body>
</html>