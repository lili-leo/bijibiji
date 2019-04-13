<template>
    <div class="inputcount">
      <div class="inleft" @click="jian">-</div>
      <!--change监听文本框改变事件-->
      <!--<input ref="numbox" class="incenter" v-model="count"  style="width: 30px;height: 20px;text-align: center">-->
      <input ref="numbox" class="incenter" v-model="count" style="width: 30px;height: 20px;text-align: center">
      <div class="inright" @click="add">+</div>
    </div>
</template>

<script>
  export default {
    name: "inputNunber",
    props:['max'],
    data(){
      return {
        count:1, //购买商品数量
      }
    },
    watch:{
      // 监听  动态设置最大值，因为ajax请求时候还未来得及请求结果
      count(newCount,oldCount){
        // this.count=newCount
        this.countChange(newCount)
        // console.log(newCount)
        // console.log(oldCount)
      // count(new,old) {
      //  this.$emit('getcount',new)
      //   // this.countChange()
      },
      // max(newMax,oldMax){
      //   this.maxno=newMax
      // }
    },
    // created(){
    //   this.$refs.numbox.addEventListener(, function, useCapture)
    // },
    methods:{
      jian(){
        this.count--;
        if(this.count<=1){
          this.count=1;
            return false
        }
      },
      add(){
        this.count++;
        if(this.count>this.max) {
          this.count = this.max;
          return false
        }
      },
      countChange(a){
        //每当文本框数据被修改时候   立即事件调用传递给父组件
        // console.log(this.count)
        // console.log(12)
        this.$emit('getcount',a)
        // console.log(this.$refs.numbox.value)
        // this.$emit('getcount',parseInt(this.count))
      }
    }
  }
</script>

<style scoped>
  .inputcount div{
    width: 30px;
    height: 20px;
    border: 1px solid #8f8f94;
    display: inline-block;
    text-align: center;
  }
</style>
