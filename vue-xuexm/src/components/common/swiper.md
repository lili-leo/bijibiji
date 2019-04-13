<template>
    <div>
      <!--<mt-swipe :auto="4000">-->
        <!--&lt;!&ndash;轮播图  传值&ndash;&gt;-->
        <!--<mt-swipe-item v-for="item in lunbotulist" :key="item.url">-->
          <!--<img :src="item.img" alt="" :class="{"full",isfull }">-->
        <!--</mt-swipe-item>-->
      <!--</mt-swipe>-->
        <!--<mt-swipe-item>1</mt-swipe-item>-->
        <!--<mt-swipe-item>2</mt-swipe-item>-->
        <!--<mt-swipe-item>3</mt-swipe-item>-->
       <mt-swipe>
         <mt-swipe-item>1</mt-swipe-item>
         <mt-swipe-item>2</mt-swipe-item>
         <mt-swipe-item>3</mt-swipe-item>
       </mt-swipe>
    </div>
</template>

<script>
  export default {
    name: "swiper",
    props:["lunbotulist","isfull"]
  }
</script>

<style scoped>
  .mint-swipe{
    height: 200px;
  }
  .mint-swipe-item{
    text-align: center;
  }
  .mint-swipe-item:nth-child(1){
    background-color: red;
  }
  .mint-swipe-item:nth-child(2){
    background-color: blue;
  }
  .mint-swipe-item:nth-child(3){
    background-color: pink;
  }
  .full{
    width: 100%;
  }
</style>
