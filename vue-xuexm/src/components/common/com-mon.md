<template>
    <div class="com-contain">
      <h3>发表评论</h3>
      <textarea name="" v-model="msg" id="" cols="10" rows="5" placeholder="请输入评论内容"></textarea>
      <mt-button type="primary" size="large" @click="fabiao">发表评论</mt-button>
      <div class="cmt-list" >
        <div class="cmt-title">
          第1楼 用户：匿名用户 发表时间：2015-1-1
        </div>
        <div class="cmt-body">
          如果没有用户名：那么此用户很懒
        </div>
        <div class="cmt-title">
          第1楼 用户：匿名用户 发表时间：2015-1-1
        </div>
        <div class="cmt-body">
          如果没有用户名：那么此用户很懒
        </div>
      </div>
      <div class="cmt-list" v-for="(item,i) in info" :key="item.add_time">
        <div class="cmt-title">
          第{{i+1}}楼 用户：{{item.user_name}} 发表时间：{{item.add_time |dateFormat}}
        </div>
        <div class="cmt-body">
          {{item.content==='undefined' ? " 如果没有用户名：那么此用户很懒" :item.content}}
        </div>
      </div>
      <mt-button type="danger" size="large" @click="getmore">加载更多</mt-button>
    </div>
</template>

<script>
  import MtButton from "mint-ui/packages/button/src/button";
  export default {
    name: "com-mon",
    components: {MtButton},
    props:['ppid'],
    data(){
      return {
        msg:"",
        pageindex:1,
        info:[]
      }
    },
    created(){
      this.$ajax.get('xxx/'+this.ppid+'?pageindex'+this.pageindex)
      .then(res=>{
        // 每当获取新闻评论数据的时候不要把老数据清空
        this.info=this.info.concat(res.data.message)
      })
      .catch(err=>{
        console.log("丫+id获取不到丫丫丫丫")
      })
    },
    methods:{
      getmore(){
        this.pageindex++
        this.$ajax.get('xxx/'+this.ppid+'?pageindex'+this.pageindex)
          .then(res=>{
          this.info=this.info.concat(res.data.message)
      })
      .catch(err=>{
        console.log("丫+id获取不到夜夜夜夜")
        })
      },
      fabiao(){
        // 注意post请求需要设置请求数据，如果设置了全局post请求数据可以不需要加    emulateJSON:true
        this.$ajax.post('xxx/'+this.ppid+'/pageindex'+this.pageindex,{content:this.msg.trim()})
        .then(res=>{
          // var com={id:1,name:'xx',add_time:data()}
          // this.info=res.data.message.unshift(com)
          var cmt={user_name:"匿名用户",add_time:Date.now(),content:this.msg.trim()}
          this.info.unshift(cmt)
          this.msg=''
        }).catch(err=>{

        })
      }
    }
  }
</script>

<style scoped>
.com-contain h3{
  font-size: 16px;
}
.com-contain textarea{
  font-size: 14px;
  margin: 0;
}
.com-contain .cmt-list{
  margin: 15px 0;
}
.com-contain .cmt-list .cmt-title{
  line-height: 30px;
}
.com-contain .cmt-list .cmt-body{
  line-height: 30px;
  text-align: left;
  text-indent: 1em;

}
</style>
