<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!--<script src="./lib/vue.js"></script>-->
</head>
<style>
    [v-clock]{
        display: none;
    }
</style>
<body>
<div id="app">
    <!--解决差值表达式的闪烁问题-->
    <h1 v-clock>{{msg}}</h1>
    <h2 v-text="msg1">=======</h2>
    <!--v-text默认有闪烁问题，但是会覆盖内容-->
    <h3 v-html="msg2"></h3>
    <h3 v-html="msg3"></h3>
    <input type="button" v-bind:title="mytitle" :value="msg">
    <input type="button" v-bind:title="mytitle" :value="msg" v-on:click="bangding">
</div>
</body>
<script src="./lib/vue.js"></script>
<script>
    var vm = new Vue({
      el:"#app",
      data(){
        return {
          msg:'123',
          msg1:'456',
          msg2:'789',
          msg3:' <h1>哈哈哈哈</h1>',
          mytitle:'我是绑定属性指定'
        }
      },
      methods:{//定义方法
        bangding(){
          alert(123)
        }
      }
    })
</script>
</html>