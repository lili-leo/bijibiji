<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="./lib/vue.js"></script>
    <style>
        .red{
            background-color: red;
        }
        .font{
            font-size: 20px;
        }
        .gao{
            height: 60px;
        }
    </style>
</head>
<body>
<div id="app">
    <!--<h1 :class="['red','font']">打字</h1>-->
    <h1 :class="['red','font',flag?'gao':'']">打字</h1>
    <!--三元表达式-->
    <h1 :class="['red','font',{'gao':flag}]">打字</h1>
    <h1 :class="{red:true,font:true,gao:true}">打字</h1>
</div>
<script>
  var vm = new Vue({
    el:'#app',
    data(){
      return {
        flag:false
      }
    },
    methods: {
    }
  })
</script>
</body>
</html>