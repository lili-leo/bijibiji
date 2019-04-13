<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="./lib/vue.js"></script>
    <script src="./lib/vuex.js"></script>
</head>
<body>
<div id="app">
    <input type="button" value="减少" @click="jian">
    <input type="button" value="增加" @click="add">
    <input type="button" value="增加" @click="canshu">
    <input type="button" value="增加" @click="duocanshu">
    <!--vuex简单点说就是共享的数据库-->
    <br>
    <input type="text" v-model="$store.state.count">
    <h3>当前数量为：{{$store.state.count}}</h3>
    <h3>{{$store.getters.opt}}</h3>
</div>
<script>
    var store=new Vuex.Store({
      state:{
        //相当于组件中的data
        count:1
      },
      mutations:{
        //相当于组件中的methods
        increment(state){
          state.count--
        },
        jia(state){
          state.count++
        },
        youcanshu(state,a){
          // 注意最多两个参数。，第一个参数为state，如果有多个参数可以传个对象
          state.count+=a
        },
        duocanshu(state,obj){
          state.count+=(obj.a+obj.b)
        }

      },
      getters:{
        //只负责对外提供数量，不负责修改数据  修改数据去找mutations的increment方法
        //类似于过滤器   增加一层包装   一般必须返回return
        //类似于计算属性  computed
        opt(state){
          return '当前最新的值是：'+state.count
        }
      }
    })
    var vm = new Vue({
      el:'#app',
      data:{
        // count:1
      },
      store:store ,   //简写store
      methods:{
        jian(){
          this.$store.commit('increment')
        },
        add(){
          this.$store.commit('jia')
        },
        canshu(){
          this.$store.commit('youcanshu',5)
        },
        duocanshu(){
          this.$store.commit("duocanshu",{a:5,b:10})
        }
      }

    })
</script>

</body>
</html>