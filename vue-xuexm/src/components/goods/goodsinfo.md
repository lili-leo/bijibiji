<template>
  <!--<div>我是信息</div>-->
  <div class="goodsinfo-container">
    <transition
      @before-enter="beforeEnter"
      @enter="enter"
      @after-enter="afterEnter">
      <div class="ball" v-show="ballflag" ref="ball"></div>
    </transition>
    <!--<div class="ball" v-show="ballflag"></div>-->
    <!--轮播-->
    <div class="mui-card">
      <div class="mui-card-content">
        <div class="mui-card-content-inner">
          <!--<swiper :lunbolist="lunbotu" idfull="false"></swiper>-->
          这是一个最简单的卡片视图控件；卡片视图常用来显示完整独立的一段信息，比如一篇文章的预览图、作者信息、点赞数量等
        </div>
      </div>
    </div>
    <!--购买-->
    <!--<div class="mui-card">-->
    <!--<div class="mui-card-header">{{goodsinfo.title}}</div>-->
    <!--<div class="mui-card-content">-->
    <!--<div class="mui-card-content-inner ">-->
    <!--&lt;!&ndash;包含页眉页脚的卡片，页眉常用来显示面板标题，页脚用来显示额外信息或支持的操作（比如点赞、评论等）&ndash;&gt;-->
    <!--&lt;!&ndash;<swiper :lunbolist="lunbotu" idfull="false"></swiper>&ndash;&gt;-->
    <!--<p class="price text_al">-->
    <!--市场价：<del>{{goodsinfo.market_price}}</del>&nbsp;&nbsp;销售价格：-->
    <!--<span class="now_price">{{goodsinfo.sell_price}}</span>-->
    <!--</p>-->
    <!--<p class="text_al">购买数量:<numbox></numbox></p>-->
    <!--<p class="text_al">-->
    <!--<mt-button type="primary" size="small">立即购买</mt-button>-->
    <!--<mt-button type="danger" size="small">立即购买</mt-button>-->
    <!--</p>-->
    <!--</div>-->
    <!--</div>-->

    <div class="mui-card">
      <div class="mui-card-header">商品的名称标题</div>
      <div class="mui-card-content">
        <div class="mui-card-content-inner ">
          <!--包含页眉页脚的卡片，页眉常用来显示面板标题，页脚用来显示额外信息或支持的操作（比如点赞、评论等）-->
          <!--<swiper :lunbolist="lunbotu" idfull="false"></swiper>-->
          <p class="price text_al">
            市场价：<del>￥2399</del>&nbsp;&nbsp;销售价格：
            <span class="now_price">￥2199</span>
          </p>
          <!--<p class="text_al">购买数量:<numbox @getcount="getSelectedCount" :max="goodsinfo.shuliang"></numbox></p>-->
          <p class="text_al">购买数量:
            <!--<transition-->
              <!--@before-enter="beforeEnter"-->
              <!--@enter="enter"-->
              <!--@after-enter="afterEnter">-->
              <!--<div class="ball" v-show="ballflag" ref="ball"></div>-->
            <!--</transition>-->

            <input-nunber :max="maxgoosinfo" @getcount="getSelectedCount"></input-nunber>
            <!--<inputnunber @getcount="getSelectedCount">-->

            <!--<button style="width: 30px;height: 30px;" @click="jia1">-</button>-->
            <!--<input type="text" style="width: 50px;height: 30px;" value="1">-->
            <!--<button style="width: 30px;height: 30px;">+</button>-->
          </p>
          <p class="text_al">
            <mt-button type="primary" size="small">立即购买</mt-button>
            <mt-button type="danger" size="small" @click="addshopcar">加入购物车</mt-button>
          </p>
        </div>
      </div>
      <!--<div class="mui-card-footer">页脚</div>-->
    </div>


    <!--<div class="mui-card">-->
    <!--<div class="mui-card-header ">商品参数 </div>-->
    <!--<div class="mui-card-content">-->
    <!--<div class="mui-card-content-inner">-->
    <!--<p>商品货号：{{goodsinfo.goods_no}}</p>-->
    <!--<p>库存情况：{{goodsinfo.stock_quantity}}</p>-->
    <!--<p>上架时间：{{goodsinfo.add_time | dateFormat}}</p>-->
    <!--</div>-->
    <!--</div>-->
    <!--<div class="mui-card-footer">-->
    <!--<mt-button type="primary" size="large" plain>图文介绍</mt-button>-->
    <!--<mt-button type="danger" size="large" plain>商品评论</mt-button>-->
    <!--</div>-->
    <!--</div>-->

    <div class="mui-card">
      <div class="mui-card-header ">商品参数 </div>
      <div class="mui-card-content">
        <div class="mui-card-content-inner">
          <p>商品货号：</p>
          <p>库存情况：</p>
          <p>上架时间：</p>
        </div>
      </div>
      <div class="mui-card-footer">
        <mt-button type="primary" size="large" plain @click="gojieshao(22)">图文介绍</mt-button>
        <mt-button type="danger" size="large" plain @click="gopingl(33)">商品评论</mt-button>
        <!--$emit-->
        <!--如何实现加入购物车的时候拿到选择的数量-->
        <!--父子组件嵌套  事件调用机制-->
      </div>
    </div>
    <p>啊哈哈</p>
    <p>啊哈哈</p>
    <p>啊哈哈</p>
    <p>啊哈哈</p>
    <p>啊哈哈</p>
    <p>啊哈哈</p>
    <common></common>
  </div>
</template>

<script>
  // import inputnunber from '../common/inputNunber'
  // import swiper from "../subcomponents/swiper"
  // import numbox from "./numbox.vue"
  import InputNunber from "../common/inputNunber.vue";
  export default {
    name: "goodsinfo",
    data(){
      return {
        // id:1,
        id:this.$route.params.id,
        lunbotu:[],// 存放轮播图的数据
        goodsinfo:{}, //获取商铺信息
        ballflag:false,  //控制小球隐藏  或者显示
        selectedCount:1,
        //保存用户选择商品数量 默认为1
        maxgoosinfo:25
      }
    },
    created(){
      // this.getlunbotu()
      // this.getGoodsinfo()
      // this.getSelectedCount()
    },
    methods: {
      // getselectcount(count){
      //   this.selectedCount=count
      //   console.log(this.selectedCount)
      // },
      // getlunbotu() {
      //   // let id=this.route.params.id
      //   this.$ajax.get("api/getthumimages/" + this.id)
      //     .then(res => {
      //     res.data.message.forEach(item => {
      //     item.img = item.src
      // })
      // }).
      //   catch(err => {}
      // )
        //   if(res.body.status===0){
        //   //先循环轮播图数组的每一项，为item添加img属性，因为
        //   //轮播图组件中只认识item.img 不认识item.src
        //   res.body.message.forEach(item =>{
        //     item.img = item.src;
        // })
        //   this.lunbotu=res.body.message
        // }
        // })
      // },
      // getGoodsinfo() {
        //获取商品信息
        // this.$http.get("api/goods/getinfo/" + this.id)
      //   this.$ajax.get("api/goods/getinfo/")
      //     .then(result => {
      //     if(result.boby.status === 0)
      //   {
      //     this.goodsinfo = result.body.message[0]
      //   }
      // })
      //   ;
      // },
      addshopcar() {
        this.ballflag = !this.ballflag
        //将购物车中商品的数据存储起来｛id:11,count:数量
        //price:价格，selected：false// ｝

        var goodsinfo={
          id:this.id,
          count:this.selectedCount,
          price: this.goodsinfo.sell_price,
          selected:true
        };
        //调用store里面的mutations方法
        this.$store.commit("addtocar",goodsinfo)
      },
      beforeEnter(el){
        el.style.transform='translate(0,0)'
      },
      enter(el,done){
        el.offsetWidth;
        //小球动画优化适配
        //已经把位置写死了，局限在某一分辨率下的
        //不能把位移的坐标写死，应该根据不同情况，动态计算坐标值
        //解决思路：先得到徽标的横纵坐标，在得到小球的横纵坐标
        //     y求差值   x求差值
        // 获取徽标和小球的位置 dom.getBoundingClientRect()
        const ballposition = this.$refs.ball.getBoundingClientRect()
        const badgeposition=document.getElementById('badge').getBoundingClientRect()

        const xDist=badgeposition.left-ballposition.left
        const yDist=badgeposition.top-ballposition.top

        // el.style.transform = `translate(${xDist}px,${yDist}px)`;   //反向字符串的拼接
        el.style.transform = `translate(${xDist}px,${yDist}px)`;  //反向字符串的拼接
        el.style.transition="all 1s ease"
        done()
      },
      afterEnter(el){
        this.ballflag=!this.ballflag
      },
      getSelectedCount(count){
        this.selectedCount = count
        // console.log("34")
        // console.log("加入数量为"+this.selectedCount)
      },
      gojieshao(id){
        this.$router.push("/home/goodsjies/"+id)
      },
      gopingl(id){
        this.$router.push("/home/goodspingl/"+id)
      },
    },

    components:{
      InputNunber,
      // inputnunber,
      // swiper,
      // numbox
    }
  }
</script>

<style scoped>
  .goodsinfo-container{
    background-color: #eee;
    overflow: hidden;
  }
  .goodsinfo-container .now_price {
    color: red;
    font-size: 16px;
    font-weight: bold;
  }
  .text_al{
    display: flex;
    justify-content: right;
  }
  .mui-card-footer{
    display: block;
  }
  .mui-card-footer button{
    margin: 10px 0;
  }
  .mui-card-content-inner{
    text-align: left;
  }
  .ball{
    width: 20px;
    height: 20px;
    background: red;
    border-radius: 50%;
    position: absolute;
    left:135px;
    top: 235px;
    z-index: 11;
  }
</style>

