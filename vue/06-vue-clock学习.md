<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        [v-cloak]{
            display: none;
        }
    </style>
</head>
<body>
<div id="app1">
    <!--<p v-cloak>+++++++{{msg}}&#45;&#45;&#45;&#45;</p>-->
    <p>+++++++{{msg}}</p>
    <h4 v-text="msg">++++++++++</h4>
    <div v-html="msg2">45678</div>
    <input type="button" value="按钮" v-bind:title="bangding">
    <input type="button" value="点击按钮变" v-on:click="hello">
</div>


<script src="lib/vue.js"></script>
<script>
    new Vue({
        el:"#app1",
        data:{
           msg:"123",
            msg1:"<h2>12345</h2>",
            bangding:"我绑定的"

        },
        methods:{//定义方法
            hello:function () {
                alert("hello")
            }
        }

    })
</script>

</body>
</html>