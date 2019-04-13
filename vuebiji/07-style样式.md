<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="./lib/vue.js"></script>
    <style>
        .red{
            background-color: red;
        }
        .font{
            font-size: 20px;
        }
        .gao{
            height: 60px;
        }
    </style>
</head>
<body>
<div id="app">
    <h1 :style="{color:'red,'font-weight':200}">只是h1</h1>
</div>
<script>
  var vm = new Vue({
    el:'#app',
    data(){
      return {
      }
    },
    methods: {
    }
  })
</script>
</body>
</html>