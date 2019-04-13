<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="./lib/vue.js"></script>
</head>
<body>
<div id="app">
    <!--循环数字数字-->
    <p v-for="item in list">{{item}}</p>
    <p v-for="(item,i) in list">索引值{{i}}-------{{item}}</p>

    <!--循环数组对象-->
    <p v-for="ob in obj">{{ob.id}}+{{ob.name}}</p>

    <!--循环对象-->
    <p v-for="(value,key) in duis">{{value}}+{{key}}</p>
    <p v-for="(value,key,i) in duis">{{value}}+{{key}}+{{i}}</p>

    <p v-for="count in 10">这是第{{count}}循环
    <!--注意：如果是数字循环从1开始-->
</div>
<script>
  var vm = new Vue({
    el:'#app',
    data(){
      return {
        list:[1,2,3,4,5],
        obj:[
          {id:1,name:'zhangsan1'},
          {id:2,name:'zhangsan2'},
          {id:3,name:'zhangsan3'},
          {id:4,name:'zhangsan4'}
        ],
        duis:{
          id:1,
          name:'lisi',
          xing:'男'
        }
      }
    },
    methods: {
    }
  })
</script>
</body>
</html>