<template>
  <div class="mui-numbox" data-numbox-min='1' data-numbox-max='10' id="nummax">
  <!--<div class="mui-numbox" data-numbox-min='1' :data-numbox-max='max'>-->
    <!-- "-"按钮，点击可减小当前数值 -->
    <button class="mui-btn mui-numbox-btn-minus" type="button">-</button>
    <input class="mui-numbox-input" type="number" @change="gaibian" ref="input_count">
    <!-- "+"按钮，点击可增大当前数值 -->
    <button class="mui-btn mui-numbox-btn-plus" type="button">+</button>
  </div>
</template>

<script>
  // import mui from "../../lib/mui/js/mui.min.js"
  // Vue.prototype.mui = mui
  export default {
    name: "numbox",
    props:["max"],
    data(){
      return {
        // this.$emit('getcount',this.$refs.input_count.value)
      }
    },
    // watch:{
    //   max:function (newval,oldval){
    //     mui(".mui-numbox").numbox().setOption("max",newval)
    //   }
    // },
    methods:{
      gaibian(){
        this.$emit('getcount',parseInt(this.$refs.input_count.value))
      }
    },
    mounted(){
      // mui('.mui-numbox').numbox();
      // document.getElementById('nummax').setAttribute("data-numbox-max", "20");
    }
  }
</script>

<style scoped>

</style>
