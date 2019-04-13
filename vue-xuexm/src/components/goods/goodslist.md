<template>
  <div class="goods-list tmp1">
  <!--<div class="goods-list tmp1" style="height: 577px">-->
    <!--<navBar title="商品列表"></navBar>-->
    <div class="goods-item" v-for="item in goodslist" :key="item.id">
      <!--<img :src="item.img_url" alt="">-->
      <h1 class="title">{{item.title}}</h1>
      <div class="info">
        <p class="price">
        <span class="now">{{item.sell_price}}</span>
        <span class="old">{{item.market_price}}</span>
        </p>
        <p class="sell">
        <span>热卖中</span>
        <span>剩余{{item.stock_quantity}}件</span>
        </p>
    </div>
    </div>
    <!--在网页中有两种跳转方式-->
    <!--1  a标签跳转-->
    <!--2  window.location.href的形式  编程时跳转-->
    <div class="goods-item" @click="goDetail(item.id)" v-for="(item,index) in goodslist" :key="index">
      <!--<div class="goods-item" @click="goDetail(item.id)">-->
      <!--<img :src="{{item.img_url}}" alt="">-->
      <h1 class="title">{{item.title}}</h1>
      <div class="info">
        <p class="price">
          <span class="now">{{item.sell_price}}</span>
          <span class="old">{{item.market_price}}</span>
        </p>
        <p class="sell">
          <span>热卖中</span>
          <span>剩余{{item.stock_quantity}}件</span>
        </p>
      </div>
    </div>
    <div class="goods-item" >
    <!--<div class="goods-item" @click="goDetail">-->
      <!--<div class="goods-item" @click="goDetail(item.id)">-->
      <router-link to="/home/goodsinfo/15">
        <img src="../../images/xiaomi.png" alt="">
        <h1 class="title">小米双网通16g</h1>
        <div class="info">
          <p class="price">
            <span class="now">￥2199</span>
            <span class="old">￥2399</span>
          </p>
          <p class="sell">
            <span>热卖中</span>
            <span>剩余60件</span>
          </p>
        </div>
      </router-link>
    </div>
    <div class="goods-item" >
      <!--<div class="goods-item" @click="goDetail">-->
      <!--<div class="goods-item" @click="goDetail(item.id)">-->
      <router-link to="/home/goodsinfo/15">
        <img src="../../images/xiaomi.png" alt="">
        <h1 class="title">小米双网通16g</h1>
        <div class="info">
          <p class="price">
            <span class="now">￥2199</span>
            <span class="old">￥2399</span>
          </p>
          <p class="sell">
            <span>热卖中</span>
            <span>剩余60件</span>
          </p>
        </div>
      </router-link>
    </div>
    <!--<div class="goods-item" >-->
      <!--&lt;!&ndash;<div class="goods-item" @click="goDetail">&ndash;&gt;-->
      <!--&lt;!&ndash;<div class="goods-item" @click="goDetail(item.id)">&ndash;&gt;-->
      <!--<router-link to="/home/goodsinfo/15">-->
        <!--<img src="../../images/xiaomi.png" alt="">-->
        <!--<h1 class="title">小米双网通16g</h1>-->
        <!--<div class="info">-->
          <!--<p class="price">-->
            <!--<span class="now">￥2199</span>-->
            <!--<span class="old">￥2399</span>-->
          <!--</p>-->
          <!--<p class="sell">-->
            <!--<span>热卖中</span>-->
            <!--<span>剩余60件</span>-->
          <!--</p>-->
        <!--</div>-->
      <!--</router-link>-->
    <!--</div>-->
    <!--<mt-loadmore  :bottom-method="loadBottom"-->
                  <!--auto-fill="isautofill"           :bottom-all-loaded="allLoaded" ref="loadmore">-->
      <div class="goods-item" @click="goDetail">
      <!--<div class="goods-item" @click="goDetail(item.id)">-->
      <img src="../../images/xiaomi.png" alt="">
      <h1 class="title">小米双网通16g</h1>
      <div class="info">
        <p class="price">
          <span class="now">￥2199</span>
          <span class="old">￥2399</span>
        </p>
        <p class="sell">
          <span>热卖中</span>
          <span>剩余60件</span>
        </p>
      </div>
      </div>
    <!--</mt-loadmore>-->
    <!--<router-link class="goods-item" :to="'/home/goodsinfo/'+item.id">-->
    <!--<img src="../../images/xiaomi.png" alt="">-->
    <!--<h1 class="title">小米双网通16g</h1>-->
    <!--<div class="info">-->
    <!--<p class="price">-->
    <!--<span class="now">￥2199</span>-->
    <!--<span class="old">￥2399</span>-->
    <!--</p>-->
    <!--<p class="sell">-->
    <!--<span>热卖中</span>-->
    <!--<span>剩余60件</span>-->
    <!--</p>-->
    <!--</div>-->
    <!--</router-link>-->
    <mt-button type="danger" size="large" @click="getMore">加载更多</mt-button>
  </div>
</template>

<script>
  export default {
    name: "goodslist",
    data(){
      return {
        pageindex:1,
        goodslist:[],
        allLoaded:false, //是否禁止出发上拉函数
        isautofill:false  //是否自动出发上拉函数
      }
    },
    // created(){
    //   this.$ajax.get('api/getgoods?pageindex='+this.pageindex).then(res=>{
    //      this.goodslist =this.goodslist.concat(res.data.message)
    //   }).catch(err=>{
    //
    //   })
    // },
    // methods:{
    //   loadBottom(){
    //     var tpg=this.pageindex++
    //   // 加载更多数据   上拉触发
    //     this.$ajax.get('api/getgoods?pageindex='+tpg).then(res=>{
    //       this.goodslist =this.goodslist.concat(res.data.message)
    //     }).catch(err=>{
    //
    //     })
    //     // 判断是否有数据
    //     if(res.data.message.length<10){
    //       this.allLoaded = true// 若数据已全部获取完毕 禁止上拉刷新
    //     }
    //   //   this.allLoaded = true;// 若数据已全部获取完毕
    //     this.$refs.loadmore.onBottomLoaded(); //通知上拉操作已经完结
    //   },
      // goDetail(id){
      //
      // }
    // }
    data(){//挂载私有数据
      return {
        pageindex:1 , //分页的数据
        goodslist:[] //存放商铺列表数组
      };
    },
    created(){
      this.getGoodslist()
    },
    methods:{
      getGoodslist(){
        //获取商铺列表
        this.$ajax.get("api/getgoods?pageindex="+this.pageindex)
          .then(res =>{
          // if(result.body.status===0){
          // this.goodslist=result.body.message
          this.goodslist=this.goodslist.concat(res.data.message)
          }).catch(err=>{
            console.log("123")
          })
      },
      getMore(){
        this.pageindex++;
        this.getGoodslist();
      },
      goDetail(id){
        // 注意区分this.$route  和 this.$router 的对象
        // this.$route  是路由参数对象，所有路由中的参数都属于他， params query 所有路由中的参数都属于他
        // this.$router 是一个路由导航对象，他可以方便的使用js代码，实现路由的前进 后退，跳转到新的url地址

        // this.$router.push("/home/goodsinfo")
        this.$router.push("/home/goodsinfo/"+id)
        // 1种写法
        // this.$router.push({path:"/home/goodsinfo/"+id})  2种写法
        // this.$router.push({name:"goodsinfo",params:{id:id}})
      }
    }
  }
  // <img src="../photo/xiaomi.png" height="220" width="220"/>
</script>

<style scoped>
  .goods-list{
    display: flex;
    flex-wrap: wrap;
    padding: 7px;
    justify-content: space-between;
    margin-bottom: 50px;
  }
  .goods-list .goods-item{
    height: 290px;
    width: 49%;
    border: 1px solid #ccc;
    box-shadow: 0 0 8px #ccc;
    margin: 5px 0;
    padding: 2px;
    display: flex;
    flex-direction: column;
          /*//改变主轴方向*/
    justify-content: space-between;
    /*min-height: 293px;*/
  }
  .goods-list .goods-item img{
    width: 100%;
  }
  .goods-list .goods-item .title{
    font-size: 14px;
  }
  .goods-list .goods-item .info{
    background-color: #eee;
  }
  .goods-list .goods-item .info p{
    margin: 0px;
    padding: 5px;
  }
  .goods-list .goods-item .info .price{}
  .goods-list .goods-item .info .price .now{
    color: red;
    font-weight: bold;
    font-size: 16px;
  }
  .goods-list .goods-item .info .price .old{
    text-decoration: line-through;
    font-size: 12px;
    margin-left: 10px;
  }
  .goods-list .goods-item .info .sell{
    display: flex;
    justify-content: space-between;
    font-size: 12px;
  }
</style>

