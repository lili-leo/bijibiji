<template>
    <div class="photo">
      <!--<navBar title="图文分享"></navBar>-->
      <div class="photoheader">
      <ul>
        <!--<li v-for="category in categorys" :key="category.id"><a href="" @click="loadimg(category.id)">{{category.title}}</a></li>-->
        <!--<li><a href="" ">{{category.title}}</a></li>-->
        <li><a href="">写真</a></li>
        <li><a href="">写真</a></li>
        <li><a href="">写真</a></li>
        <li><a href="">写真</a></li>
        <li v-for="(category,i) in categorys" :key="i"><a href="javascript:;" @click="loadimg(category.id)">{{category.title}}</a></li>
        <!--<li><a href=""javascript:;">{{category.title}}</a></li>-->
      </ul>
    </div>
      <div class="photolist">
        <ul>
          <!--<li><a href="">-->
            <!--<img :src="img.img_url" :key="img.id" alt="">-->
            <!--<img v-lazy="img.i 。mg_url" :key="img.id" alt="">-->
             <!--懒加载··········-->
            <!--<p>-->
              <!--<span v-text="img.title">唉唉唉唉唉啊哎</span><br>-->
              <!--<span>啊啊啊啊啊啊啊啊啊啊啊</span>-->
            <!--</p></a>-->
          <!--</li>-->
          <!--tag指定为什么元素-->
          <li><router-link to="/home/photodetail/15" tag="li">
          <!--<li><router-link :to="'/home/photodetail/'+img.id">-->
            <!--<img :src="img.img_url" :key="img.id" alt="">-->
            <img src="../../images/cbd.jpg" alt="">
            <p>
              <span>唉唉唉唉唉啊哎</span><br>
              <span>啊啊啊啊啊啊啊啊啊啊啊</span>
            </p>
            </router-link>
          </li>
          <li><img src="../../images/cbd.jpg" alt="">
            <p>
              <span>唉唉唉唉唉啊哎</span><br>
              <span>啊啊啊啊啊啊啊啊啊啊啊</span>
            </p>
          </li>
        </ul>
      </div>
    </div>
</template>

<script>
  export default {
    name: "photoshare",
    data(){
      return {
        categorys:[]  //分类
      }
    },
    created(){
      this.$ajax.get('api/getimgcategory').then(res =>{
        console.log("成功了");
        this.categorys = res.data.message
          this.categorys.unshift({
          id:0,
          title:"全部"
        })
      }).catch(err =>{
        console.log("失败了")
      })
      this.loadimg(0)
      // 将0作为参数获取全部请求
      // this.ajax.get('getimages'+0)
      // ,then(res=>{
      //   console.log("成功了");
      // })
      // .catch(err=>{
      //   console.log("错误");
      // })
    },
    methods:{
      loadimg(id){
        this.$ajax.get('getimages'+id)
          .then(res=>{
          console.log("成功了");
      })
      .catch(err=>{
          console.log("错误");
      })
      }
    }
  }
</script>

<style scoped>
.photo{
  margin-bottom: 30px;
  overflow: hidden;
  z-index: -999;
  /*margin-top: 30px;*/
}

  .photoheader ul{
    /*width: 10000%;*/
    /*height: 100%;*/
    padding: 0;
    margin: 0;
    overflow-x: auto;
    white-space: nowrap;
  }
.photoheader ul>li{
  list-style: none;
  display: inline-block;
  /*float: left;*/
  height: 60px;
  line-height: 60px;
  margin-left: 20px;
  background-color: whitesmoke;
}
  .photolist ul{
    padding-left: 0;
    margin: 0;
  }
  .photolist ul li{
    display: block;
    position: relative;
    /*p{*/
      /*position: absolute;*/
      /*bottom: 0;*/
    /*}*/
  }
  .photolist ul li p{
    position: absolute;
    bottom: 0;
  }
  .photolist ul li p span{
    display: block;
  }
image[lazy=loading] {
  width: 40px;
  height: 300px;
  margin: auto;
}
</style>
