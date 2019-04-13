<template>
    <div class="shopcar-contain">
      <div class="goods-list"></div>
      <!--商品列表区域-->
      <div class="mui-card">
        <div class="mui-card-content">
          <div class="mui-card-content-inner">
            <mt-switch></mt-switch>
            <img src="../../images/feedback.png" alt="" style="width: 50px;height: 50px;line-height: 120px">
            <div>
            <h1>小米  &nbsp;&nbsp;&nbsp;小米note &nbsp;&nbsp;&nbsp;&nbsp;16g双网通</h1>
            <p>
              <span class="price">￥2199 </span>
              <inputnunber></inputnunber>
              <a href="#">删除</a>
            </p>
          </div>
          </div>
        </div>
      </div>
      <div class="mui-card">
        <div class="mui-card-content">
          <div class="mui-card-content-inner">
            <mt-switch></mt-switch>
            <img src="../../images/feedback.png" alt="" style="width: 50px;height: 50px;line-height: 120px">
            <div>
              <h1>小米  &nbsp;&nbsp;&nbsp;小米note &nbsp;&nbsp;&nbsp;&nbsp;16g双网通</h1>
              <p>
                <span class="price">￥2199 </span>
                <inputnunber></inputnunber>
                <a href="#">删除</a>
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="mui-card" v-for="(item,i) in goodslist" :key="item.id">
        <div class="mui-card-content">
          <div class="mui-card-content-inner">
            <mt-switch @change="selectedchange(item.id,$store.getters.getgoodsselected[item.id])"
                       v-model="$store.getters.getgoodsselected[item.id]"></mt-switch>
            <img src="../../images/feedback.png" alt="" style="width: 50px;height: 50px;line-height: 120px">
            <!--<img :src="{{item.tumb_path}}" alt="" style="width: 50px;height: 50px;line-height: 120px">-->
            <div>
            <!--<h1>小米  &nbsp;&nbsp;&nbsp;小米note &nbsp;&nbsp;&nbsp;&nbsp;16g双网通</h1>-->
            <h1>{{item.title}}</h1>
            <p>
              <!--<span class="price">￥2199 </span>-->
              <span class="price">{{item.sell_price}}</span>
              <!--<inputnunber :initcount="$store.getters.getgoodscount[item.id]" :goodsid="item.id"></inputnunber>-->
              <!--<shopcarnumbox></shopcarnumbox>-->
              <shopcarnumbox :initcount="this.$store.getters.getgoodscount[item.id]" :goodsid="item.id"></shopcarnumbox>
              <a href="#" @click.prevent="remove(item.id,i)">删除</a>
            </p>
          </div>
          </div>
        </div>
      </div>
      <!--结算区域-->
      <div class="mui-card">
        <div class="mui-card-content">
          <div class="mui-card-content-inner jiesuan">
            <div class="left">
              <p>总计不含运费</p>
              <!--<p>已勾选商品<span class="red">0</span>件，总价<span class="red">￥0</span></p>-->
              <p>已勾选商品<span class="red">{{$store.getters.getgoodscountandjia.count}}</span>件，
                总价<span class="red">{{$store.getters.getgoodscountandjia.amount}}</span></p>
            </div>
            <mt-button type="danger">去结算</mt-button>
          </div>
        </div>
      </div>
    </div>

</template>

<script>
  import shopcarnumbox from '../common/shopcarnumbox'
  import inputnunber from '../common/inputNunber'
  export default {
    name: "shopcart",
    data(){
      return {
        goodslist:[] //购物车数据
      }
    },
    created(){
      this.getgoodslist()
    },
    methods:{
      getgoodslist(){
        //获取购物车商品列表
        var idArr = []
        // this.$store.state.car.forEach(item=>idArr.push(item.id))
        this.$store.state.car.forEach(item=>{
          idArr.push(item.id)
        })
        //如果数据中没有借口，则不需要请求数据，否则会报错
        if(idArr.length<=0){
          return;
        }
        this.$ajax.get('api/goods/getshopcarlist'+idArr.join(',')).then(res=>{
          this.goodslist=res.data.message
        }).catch(err=>{

        })

      },
      remove(id,index){
        //点击删除把商品从store中删除。同时组件中对应的goodslist也要删除。 index
        this.goodslist.splice(index,1);
        this.$store.commit('removefromcar',id)
      },
      selectedchange(id,val){
        this.$store.commit('updatagoodsselected',{id,selected:val})
      }
    },
    components:{
      shopcarnumbox,
      inputnunber
    }
  }
</script>
<style scoped>
.shopcar-contain{
  background-color: #f4f4f4;
  overflow: hidden;
}
.shopcar-contain .mui-card .mint-switch{
  /*display:none;*/
  /*display:inline-flex;*/
}
.shopcar-contain .mui-card .mui-card-content-inner{
  display: flex;
  align-item:center;
  /*justify-content: ;*/
}
.shopcar-contain .mui-card .mui-card-content-inner h1{
  font-size: 11px;
}
.shopcar-contain .mui-card .mui-card-content-inner p{
  display: flex;
  margin-top: 20px;

  /*justify-content: flex-start;*/
}
.shopcar-contain .mui-card .mui-card-content-inner .price{
  color: red;
}
  .jiesuan{
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
.jiesuan .red{
  color: red;
}
</style>
