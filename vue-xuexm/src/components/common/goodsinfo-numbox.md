<template>
    <div>
      <div class="mui-numbox" data-numbox-min='1' data-numbox-max='9'>
        <button class="mui-btn mui-btn-numbox-minus" type="button">-</button>
        <input id="test" class="mui-input-numbox" type="number" value="1" />
        <button class="mui-btn mui-btn-numbox-plus" type="button">+</button>
      </div>
    </div>
</template>

<!--import mui from "../../lib/mui/js/mui.min.js"-->
<!--// mounted(){-->
<!--//初始化组件-->
<!--// mui(".mui-numbox").numbox()-->

<script>
  // import mui from "../../lib/mui/js/mui.min.js"
  export default {
    name: "numbox",
    mounted(){
      mui(".mui-numbox").numbox();
    }
    // mounted(){
    //       //初始化组件
    // // mui(".mui-numbox").numbox();
    // }
  }
</script>

<style scoped>

</style>
