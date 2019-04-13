<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="lib/vue.js"></script>
</head>
<body>
<div id="app">
    <p>{{msg}}</p>
    <p>{{msg | dancun("疯狂")}}</p>
    <div ref="div"></div>
</div>
<script>
    Vue.filter("dancun",function (msg,arg) {
        // return msg.replace(/单纯/g,arg)
      return msg.split("").reverse().join("")
        //正则匹配
    })
    var vm = new Vue({
        el:"#app",
        data:{
            msg:"曾经单纯，现在单纯，以后单纯",
        },
        created(){//组件创建后 数据初始化 但dom还没有生成
          console.log(this.refs.div)
        },
        mounted(){
          //数据渲染  dom已经生成
          this.$refs.div.innerHTML="哈哈呵呵"
        }
    })
    // Vue.filter("dancun",function (msg) {
    //     return msg.replace("单纯","邪恶")
    // })

</script>

</body>
</html>