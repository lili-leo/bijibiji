<template>
    <div>
      <input type="button" value="减少" @click="jian">
      <input type="button" value="增加" @click="add"><br>
      <input type="text" name="" id="" v-model="$store.state.count">
      <h3>当前数量为：{{$store.state.count}}</h3>
      <h3>{{$store.getters.optcount}}</h3>
    </div>
</template>

<script>
  export default {
    name: "counter",
    data(){
      return {
        // count:0
      }
    },
    methods:{
      add(){
        // this.$store.state.count++   不推荐使用此方法  不让用防止出错
        this.$store.commit('increment')    //必须用此方法改变store里面的数据
      },
      jian(){
        this.$store.commit('jianfa',{a:3,b:2})
        // this.$store.commit('jianfa',2)
      }
    }
  }
</script>

<style scoped>

</style>
