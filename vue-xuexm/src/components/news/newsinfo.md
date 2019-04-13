<template>
    <div class="tem1">
      <!--<navBar title="新闻详情"></navBar>-->
      <!--<nav-bar title="新闻详情"></nav-bar>-->
      <!--<nav-bar title="新闻列表"></nav-bar>-->
      <div>
        <h3>{{newsinfo.title}}</h3>
        <div class="con-con">
          <span>发表时间:{{newsinfo.add_time | dateFormat}}</span>
          <span class="dianjicishu">点击{{newsinfo.click}}次数</span>
        </div>
        <div class=news-content v-html="newsinfo.content"></div>
      </div>
      <div>
        <h3>新闻标题</h3>
        <div class="con-con">
          <span>发表时间</span>
          <span>分类：民生经济</span>
          <span class="dianjicishu">点击次数</span>
        </div>
        <div class=news-content>新闻明细+++++自2003年强制
          性婚检取消以来，经常有人提议恢复强制性婚检，甚至黑龙
          江、云南、吉林等一些地区又陆续恢复强制婚检或强制免费婚
          检。且不谈那些利用婚检牟利的打算，主张恢复强制婚检的人，
          最重要的理由就是，2003年取消强制性婚检后，中国婚检率出现
          了断崖式下跌。而与此同时，有不少报道或研究指出，全国各地都
          有缺陷婴儿出生增多的现象出现。比如宁波市婚检率从2001年的98%下
          降到2004年的3.1%，结果同期新生儿出生缺陷从12.6‰上升到19.56‰。
        </div>
      </div>
      <common :ppid="this.id"></common>
    </div>
</template>

<script>
  export default {
    name: "newsinfo",
    data(){
      return {
        newsinfo:{},  //象征性的表示数据类型
        // id:this.$route.params.id   //传入的id
        id:1
      }
    },
    created(){
      //获取路由参数   拼接路由参数拼接回来的url   响应回来渲染页面
      // var id = this.$route.params.id
      this.$ajax.get('getnew/'+this.id).then(res =>{
        // 成功渲染页面
        this.newsinfo=this.res.data.message[0]
      }).catch(err =>{
        console.log("获取失败了丫丫丫")
      })
    }
  }
</script>

<style scoped>
  .tem1 h3{
    text-align: center;
    color: red;
  }
  .tem1 .con-con{
    height: 30px;
    border-bottom: 1px solid red;
    margin-left: 15px;
    margin-right: 15px;
  }
  .tem1 .con-con .dianjicishu{
    position: relative;
    display: inline-block;
    margin-right: 15px;
  }
.tem1 div:nth-child(1){
  display: flex;
  justify-content:left;
}
</style>
