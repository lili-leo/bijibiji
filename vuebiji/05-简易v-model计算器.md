<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="./lib/vue.js"></script>

</head>
<body>
<div id="app">
    <input type="text" v-model="n1">
    <select name="" id="" v-model="opt">
        <option value="+">+</option>
        <option value="-">-</option>
        <option value="*">*</option>
        <option value="/">/</option>
    </select>

    <input type="text" v-model="n2">


    <input type="button" value="=" @click="jisuan">



    <input type="text" v-model="result">
</div>
<script>
  var vm = new Vue({
    el:'#app',
    data(){
      return {
        n1:0,
        n2:0,
        result:0,
        opt:'+'
      }
    },
    methods: {
      jisuan(){
        // switch (this.opt) {
        //   case '+':
        //     this.result=parseInt(this.n1)+parseInt(this.n2)
        //     break;
        //   case '-':
        //     this.result=parseInt(this.n1)-parseInt(this.n2)
        //     break;
        //   case '*':
        //     this.result=parseInt(this.n1)*parseInt(this.n2)
        //     break;
        // }
        var res=parseInt(this.n1)+this.opt+parseInt(this.n2)
        this.result=eval(res)
      }
    }
  })
</script>
</body>
</html>