<template>
  <div id="app">
    <!--顶部区域-->
    <!--<mt-header fixed title="传智27期"></mt-header>-->
    <!--活动区域-->
    <!--<router-view class="tem1"></router-view>-->
    <!--底部区域-->
    <router-view></router-view>

    <nav class="mui-bar mui-bar-tab">
      <router-link class="mui-tab-item" to="/home">
        <span class="mui-icon icon-magnet"></span>
        <span class="mui-tab-label">外卖</span>
      </router-link>
      <router-link class="mui-tab-item" to="/search">
        <span class="mui-icon icon-search"><span class="mui-badge">9</span></span>
        <span class="mui-tab-label">搜索</span>
      </router-link>
      <router-link class="mui-tab-item" to="/order">
        <span class="mui-icon icon-file-text2"></span>
        <span class="mui-tab-label">订单</span>
      </router-link>
      <router-link class="mui-tab-item" to="/huiyuan">
        <span class="mui-icon icon-address-book"></span>
        <span class="mui-tab-label">我的</span>
      </router-link>
    </nav>
  </div>
</template>
<script src="./css/swiper.min.js"></script>
<script>
// import { Toast } from 'mint-ui';
export default{
  name: 'App'

}
</script>
<script type="text/javascript" src="./css/swiper.js"></script>
<script type="text/javascript" src="./css/index.js"></script>
<style>
  #app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: left;
    color: #2c3e50;
    margin-top: 40px;
  }

</style>
