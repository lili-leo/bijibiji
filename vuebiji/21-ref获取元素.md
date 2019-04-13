<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="./lib/vue.js"></script>
</head>
<body>
<div id="app">
    <input type="button" value="获取元素" @click="dian">
    <h3 ref="myh3">天气很好</h3>
</div>

<script>
    var login={
      temolate:'<h1>登录组件</h1>'
    }
    var vm = new Vue({
      el:'#app',
      data:{},
      methods:{
        dian(){
          this.$refs.myh3.innerText='天气不好啊啊啊啊啊啊'
        }
      }
    })
</script>
</body>
</html>