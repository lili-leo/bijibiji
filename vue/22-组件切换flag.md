<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="lib/vue.js"></script>
</head>
<body>

<div id="app">
    <a href="" @click.prevent="flag=true">登录</a>
    <a href="" @click.prevent="flag=false">注册</a>

    <login v-if="flag"></login>
    <zuche v-else="flag"></zuche>
</div>

<script>
    Vue.component("login",{
      template:"<h3>登录组件</h3>"
    })

    Vue.component("zuche",{
      template:"<h3>注册组件</h3>"
    })
    var vm = new Vue({
      el:"#app",
      data:{
        flag:true
      }
    })
</script>
</body>
</html>