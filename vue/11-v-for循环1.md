<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="lib/vue.js"></script>
</head>
<body>
<div id="app">
    <ul>
        <li v-for="(stu,index) in stus" :key="index">
            index:{{index}},stu:{{stu}}
        </li>
        <li v-for="(value,key,index) in person" :key="index">
            value:{{value}}
            key:{{key}}
            index:{{index}}
        </li>
    </ul>
</div>
<script>
    new Vue({
      el:"#app",
      data(){
        return{
          stus:[{name:"aa",scole:1},{name:"bb",scole:2}],
          person:{name:"xiaom",alise:"麦克"}
        }
      },
        methods:{}
    })
</script>
</body>
</html>