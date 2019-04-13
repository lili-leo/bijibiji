<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="lib/vue.js"></script>
</head>
<body>
<div id="app">
    <p v-for="item in list">{{item}}</p>
    <p v-for="item in its">{{item}}</p>
    <p v-for="item in duix">{{item}}</p>
    <p v-for="count in 10">{{count}}</p>
    v-if="flag" 有较高的切换性能，每次创建删除元素
    v-show="flag" 显示或者隐藏，不删除元素
</div>
<script>
   new Vue({
       el:"#app",
       data:{
           list:[1,2,3,4,5],
           its:[
               {id:1,name:"za1"},
               {id:2,name:"za2"},
               {id:3,name:"za3"},
               {id:4,name:"za4"},
           ],
           duix:{id:1,name:"动画",sex:"男"}
       },
       methods:{}
   })
</script>
</body>
</html>