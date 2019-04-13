<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="./lib/vue.js"></script>
    <script src="./lib/vue-router-3.0.1.js"></script>

</head>
<body>
<div id="app">
    <input type="text" v-model="f1">
    <input type="text" v-model="f2">
    <input type="text" v-model="f3">
</div>


<script>
  var vm= new Vue({
    el:'#app',
    data:{
      f1:"",
      f2:""
    },
    // router:router,
    methods:{},
    computed:{//计算属性
      f3(){
        return this.f1+this.f2
      }
    }
  })
</script>

</body>
</html>