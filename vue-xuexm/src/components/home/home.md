<template>
  <div>
    <mt-swipe :auto="4000" >
    <mt-swipe-item>1</mt-swipe-item>
    <mt-swipe-item>2</mt-swipe-item>
    <mt-swipe-item>3</mt-swipe-item>
    </mt-swipe>
    <mt-swipe :auto="4000">
      <mt-swipe-item v-for="(img,index) in lunbotulist" :key="index">
        <a :href="img.url">
        <img :src=" img.img" alt="">
        </a>
      </mt-swipe-item>
    </mt-swipe>
    <div class="mui-content">
      <ul class="mui-table-view mui-grid-view mui-grid-9">
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/home/newslist">
        <span class="mui-icon mui-icon-home"></span>
        <div class="mui-media-body">新闻咨询</div></router-link></li>
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/home/photoshare">
        <span class="mui-icon mui-icon-email"></span>
        <div class="mui-media-body">图文分享</div></router-link></li>
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/home/goodslist">
        <span class="mui-icon mui-icon-chatbubble"></span>
        <div class="mui-media-body">商品展示</div></router-link></li>
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
        <span class="mui-icon mui-icon-location"></span>
        <div class="mui-media-body">留言反馈</div></a></li>
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
        <span class="mui-icon mui-icon-search"></span>
        <div class="mui-media-body">搜索咨询</div></a></li>
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
        <span class="mui-icon mui-icon-phone"></span>
        <div class="mui-media-body">联系我们</div></a></li>
    </ul>
    </div>
    <counter></counter>
    <p>1</p>
    <p>1</p>
    <p>1</p>
    <p>1</p>
    <p>1</p>
    <p>1</p>
   </div>
</template>
<script>
  import {Toast} from "mint-ui"
  export default {
    name: 'home',
    data() {
      return {
        lunbotulist: []
      }
    },
    created() {
      this.$ajax.get('getlunbo')
        .then(res=>{
          Toast("获取成功了")
          this.lunbotulist=res.data.message
        }).catch(err=>{
          // Toast("获取失败了")
        })
      // this.$ajax.get('getlunbo').then(res => {
      //   if (res.body.status === 0)
      // {
      //   // this.imgs = this.res.body.message
      //   this.imgs=res.data.message
      //   // console.log(imgs)
      //   Toast("获取成功 ")
      // }else{
      //   Toast("获取失败来 ")
      // }
    }
  }
</script>

<style scoped>
.mt-swipe mt-swipe-item{
  height: 200px;
  img{
    height: 100%;
    width: 100%;
  }
}
.mint-swipe{
  padding: 0;
  margin: 0;
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
  /*九宫格样式*/
.mui-table-view.mui-grid-view.mui-grid-9{
  background-color: white;
}
.mui-table-view.mui-grid-view.mui-grid-9 li{
  border: 0;
}
.mui-table-view.mui-grid-view.mui-grid-9 {
  margin: 0;
}
/*九宫格清楚样式图标  */
.mui-icon-home:before,
.mui-icon-email:before,
.mui-icon-chatbubble:before,
.mui-icon-location:before,
.mui-icon-search:before,
.mui-icon-phone:before{
  content:""
}
  /*九宫格背景图片*/
.mui-icon-home{
  background-image:url("../../images/news.png") ;
  background-repeat: round;
}
.mui-icon-email{
  background-image:url("../../images/picShare.png") ;
  background-repeat: round;
}
.mui-icon-chatbubble{
  background-image:url("../../images/goodShow.png") ;
  background-repeat: round;
}
.mui-icon-location{
  background-image:url("../../images/feedback.png") ;
  background-repeat: round;
}
.mui-icon-search{
  background-image:url("../../images/search.png") ;
  background-repeat: round;
}
.mui-icon-phone{
  background-image:url("../../images/callme.png") ;
  background-repeat: round;
}
.mui-icon{
  height: 60px;
  width: 60px;
}
</style>
