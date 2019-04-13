<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="vue.js"></script>
    <script src="vue-router-3.0.1.js"></script>
</head>
<body>

<div id="app">
    <router-link to="/account">account</router-link>
    <router-view></router-view>
</div>
<template id="tmp1">
    <!--<div>-->
        <!--<h1>这是account组件</h1>-->
        <!--<router-link to="/account/login">登录</router-link>-->
        <!--<router-link to="/account/register">注册</router-link>-->
    <!--</div>-->
    <div>
        <h1>这是account的组件</h1>
        <router-link to="/account/login">登录</router-link>
        <router-link to="/account/register">注册</router-link>
    </div>
</template>
<script>
  var account = {
    template: "#tmp1"
  }
  var login = {
    template: "<h1>登录aa</h1>"
  }
  var register = {
    template: "<h1>注册bb</h1>"
  }

  var router = new VueRouter({
    routes: [
      {
        path: "/account",component: account,
         clildren: [
            {path: "login", component: login},
            {path: "register", component: register},
         ]
      }
    ]
    // routes: [
    //   {
    //     path: "/account", component: account,
    //     children: [
    //       {path: "login", component: login},
    //       {path: "register", component: register}
    //     ]
    //   }
    // ]
  // routes: [
    //   {
    //     path: "/account", component: account,
    //     children: [
    //       {path: "login", component: login},
    //       {path: "register", component: register}
    //     ]
    //   }
    //   // {path:"/account.login",component:account},
    //   // {path:"/account/register",component:account}
    // ]
  })

  var vm = new Vue({
    el: "#app",
    data: {},
    methods: {},
    router
  })

</script>

</body>
</html>