<template>
  <div id="app">
    <!--顶部区域-->
    <mt-header fixed title="传智27期">
      <span slot="left" @click="goback" v-show="flag">
        <mt-button icon="back">返回</mt-button>
      </span>
    </mt-header>
    <!--活动区域-->
    <transition>
      <router-view class="tem" mode="out-in"></router-view>
    </transition>
    <!--底部区域-->
    <nav class="mui-bar mui-bar-tab">
      <router-link class="mui-tab-item " to="/home">
        <span class="mui-icon mui-icon-home"></span>
        <span class="mui-tab-label">首页</span>
      </router-link>
      <router-link class="mui-tab-item" to="/member">
        <span class="mui-icon mui-icon-contact"></span>
        <span class="mui-tab-label">会员</span>
      </router-link>
      <router-link class="mui-tab-item" to="/shopcart">
        <!--<span class="mui-icon mui-icon-extra mui-icon-extra-cart"><span class="mui-badge " id="badge">0</span></span>-->
        <span class="mui-icon mui-icon-extra mui-icon-extra-cart"><span class="mui-badge " id="badge">{{$store.getters.getallcount}}</span></span>
        <span class="mui-tab-label">购物车</span>
      </router-link>
      <router-link class="mui-tab-item" to="/search">
        <span class="mui-icon mui-icon-search"></span>
        <span class="mui-tab-label">查找</span>
      </router-link>
    </nav>
  </div>
</template>
<script>
  // import mui from "./lib/mui/js/mui.min.js"
  // Vue.prototype.mui = mui
  // mui('body').on('tap','a',function(){document.location.href=this.href;});
// import { Toast } from 'mint-ui';
export default{
  name: 'App',
  date(){
    return {
      flag:true
    }
  },
  created(){
    this.flag=this.$route.path==='/home'?false:true
  },
  methods:{
    goback(){
      this.$router.go(-1)
    }
  },
  watch:{
    '$route.path'(newval){
      if(newval==='/home'){
        this.flag=false
      }else{
        this.flag=true
      }
    }
  }
}
</script>

<style>
  #app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: left;
    color: #2c3e50;
    margin-top: 40px;
    overflow-x: hidden;
  }
  .v-enter{
    transform: translateX(100%);
    /*position: absolute;*/
  }
  .v-leave-to{
    transform: translateX(-100%);
    position: absolute;
  }
  .v-enter-active,
  .v-leave-active{
    transition: all 1s ease;
  }
</style>
