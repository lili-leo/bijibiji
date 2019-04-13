<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="./lib/vue.js"></script>

</head>
<body>
<div id="app">
    <h1>{{msg}}</h1>
    <input type="text" v-bind:value="msg">
    <!--v-bind只能单项绑定-->

    <input type="text" v-model="msg">
    <!--v-model双向数据绑定 只用于表单元素 -->
    <!--input(radio  text  address) select  textarea  checkbox-->
</div>
<script>
    var vm = new Vue({
      el:'#app',
      data(){
        return {
          msg:'大家都是好孩子'
        }
      }
    })
</script>
</body>
</html>