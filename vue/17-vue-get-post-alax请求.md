<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="lib/vue.js"></script>
    <!--vue-resource依赖vue-->
    <script src="lib/vue-resource-1.3.4.js"></script>
</head>
<body>
<div id="app">
    <input type="button" value="get请求" @click="getInfo">
</div>
<script>
    var vm=new Vue({
        el:"#app",
        data:{},
        methods:{
            getInfo(){
                //当发起get请求之后，通过。then设置成功的回调函数
                this.$http.get("url").then(function (result) {
                    
                })
            }
        }
    })
</script>

</body>
</html>