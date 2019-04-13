<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="lib/vue.js"></script>
</head>
<body>
<div id="app">
    <h3>{{msg}}</h3>
    <!--<input type="text" v-bind:value="msg">-->
    <!--<input type="text" v-modle:value="msg">-->
    <input type="text" v-model="msg">
</div>


<script>
    var vm=new Vue({
        el:"#app",
        data:{
            msg:"大家都是好学生"
        }
    })
</script>
</body>
</html>