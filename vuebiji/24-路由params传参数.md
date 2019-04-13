<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="./lib/vue.js"></script>
    <script src="./lib/vue-router-3.0.1.js"></script>
    <style>
        .myactive{
            color: red;
        }
        .v-enter,
        .v-leave-to{
            transform: translateX(80px);
        }
        .v-enter-active,
        .v-leave-active{
            transition: all 1s ease;
        }
    </style>
</head>
<body>

<div id="app">
    <router-link to="/login?id=10&name=za">登录</router-link>
    <router-link to="/zhuce/22/lilei">注册</router-link>
    <transition mode="out-in">
        <router-view></router-view>
    </transition>
</div>
<script>
  var login = {
    template:'<h1>登录组件--{{this.$route.query.id}}==={{this.$route.query.name}}</h1>',
    data(){
      return {}
    },
    created(){
      console.log(this.$route)
    }
  }
  var zhuce = {
    template:'<h1>注册组件---{{$route.params.id}}++{{$route.params.name}}</h1>'
  }
  var router= new VueRouter({
    routes:[
      {path:'/',redirect:'/login'},
      {path:'/login',component:login},
      {path:'/zhuce/:id/:name',component:zhuce}
    ],
    linkActiveClass:'myactive'
  })
  var vm= new Vue({
    el:'#app',
    data:{},
    router:router,
    methods:{}
  })
</script>

</body>
</html>