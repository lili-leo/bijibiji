<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="lib/vue.js"></script>
    <style>
        .red{
            color: red;
        }
        .this{
            background-color: #0099cc;
        }
        .active{
            background-color:rosybrown;
        }
    </style>

</head>
<body>
<div id="app">
<!--<h1 :class="['this','red']">这是一个很大的字体</h1>-->
<!--<h1 :class="['this','red']">这是一个很大的字体</h1>-->
    <!--三元表达式-->
<h1 :class="['this','red',flag?'active':'']">这是一个很大的字体</h1>
<h1 :class="['this',{'active':flag}]">这是一个很大的字体</h1>
</div>
<script>
   var vm=new Vue({
       el:"#app",
       data:{
           flag:true
       },
       methods:{},
   })
</script>



</body>
</html>