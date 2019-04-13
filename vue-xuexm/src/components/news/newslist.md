<template>
  <div>
    <!--<div class="title">-->
      <!--缩略图居左-->
    <!--</div>-->
    <!--<nav-bar title="新闻列表"></nav-bar>-->
    <ul class="mui-table-view">
      <li class="mui-table-view-cell mui-media">
        <router-link to="/home/newsinfo">
          <img class="mui-media-object mui-pull-left" src="../../images/cbd.jpg">
          <div class="mui-media-body">
            <h1>新闻标题</h1>
            <p class='mui-ellipsis'>
              <span>点击数：1</span>
              <span>发表时间：2017-01-01</span>
            </p>
          </div>
        </router-link>
      </li>
      <li v-for="news in newslist" :key="news.id" class="mui-table-view-cell mui-media">
        <router-link :to="'/home/newsinfo/'+news.id">
          <img class="mui-media-object mui-pull-left" :src="news.img_url">
          <div class="mui-media-body">
            <h1>{{news.title}}</h1>
            <p class='mui-ellipsis'>
              <span>点击数：{{news.click}}</span>
              <span>发表时间：{{news.add_time | dateFormat}}</span>
            </p>
          </div>
        </router-link>
      </li>

      <!--<li class="mui-table-view-cell mui-media">-->
        <!--<a href="javascript:;">-->
          <!--<img class="mui-media-object mui-pull-left" src="../images/muwu.jpg">-->
          <!--<div class="mui-media-body">-->
            <!--木屋-->
            <!--<p class='mui-ellipsis'>想要这样一间小木屋，夏天挫冰吃瓜，冬天围炉取暖.</p>-->
          <!--</div>-->
        <!--</a>-->
      <!--</li>-->
      <!--<li class="mui-table-view-cell mui-media">-->
        <!--<a href="javascript:;">-->
          <!--<img class="mui-media-object mui-pull-left" src="../images/cbd.jpg">-->
          <!--<div class="mui-media-body">-->
            <!--CBD-->
            <!--<p class='mui-ellipsis'>烤炉模式的城，到黄昏，如同打翻的调色盘一般.</p>-->
          <!--</div>-->
        <!--</a>-->
      <!--</li>-->
    </ul>
  </div>
</template>

<script>
  import  {Toast} from 'mint-ui'
  export default {
    name: "newslist",
    data(){
      return {
        newslist:[]
      }
    },
    created(){
      this.$ajax.get('api/getnewslist').then(res =>{
        console.log("成功了")
        this.newslist=res.data.message
      })
        .catch(err =>{
           console.log("失败了")
          Toast("-----获取失败了----")
      })
    }
  }
</script>

<style scoped>
  .mui-table-view li .mui-media-body h1{
    font-size: 16px;
    text-align:left;
  }
  .mui-table-view li .mui-media-body .mui-ellipsis{
  display: flex;
  justify-content: space-between;
}
</style>
