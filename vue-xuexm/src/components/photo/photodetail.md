<template>
  <div class="tem1">
    <navBar title="图文"></navBar>
    <div class="photo-title">
      <p>图片详情</p>
      <span>发起日期：2015-1-1</span>
      <span>0此浏览</span>
      <span>分类</span>
    </div>
    <div>
      <vue-preview :slides="slide1" @close="handleClose"></vue-preview>
    </div>
    <common></common>
    <!--<div class="photo-title">-->
      <!--<p v-text="imginfo.title"></p>-->
      <!--<span>发起日期：{{imginfo.add_time}}</span>-->
      <!--<span>{{imginfo.click}}此浏览</span>-->
      <!--<span>分类</span>-->
    <!--</div>-->
  </div>
</template>

<script>
  export default {
    name: "photodetail",
    data(){
      return {
        imgs:[],
        imginfo:{},
        slide1: [
          {
            src: 'https://farm6.staticflickr.com/5591/15008867125_68a8ed88cc_b.jpg',
            msrc: 'https://farm6.staticflickr.com/5591/15008867125_68a8ed88cc_m.jpg',
            // src:'@/xiaomi.png',
            // msrc:'@/xiaomi.png',
            alt: 'picture1',
            title: '图片1',
            w: 600,
            h: 400
          },
          {
            src: 'https://farm4.staticflickr.com/3902/14985871946_86abb8c56f_b.jpg',
            msrc: 'https://farm4.staticflickr.com/3902/14985871946_86abb8c56f_m.jpg',
            alt: 'picture2',
            title: '图片2',
            w: 1200,
            h: 900
          }
        ]
      }
    },
    created(){
      var id = this.$route.params.id
      console.log(id)
      this.$ajax.get('getimageinfo'+id).then(res =>{
        console.log("成功")
        this.imginfo=res.data.message
      }).catch(err =>{
        console.log("失败")
      })
      this.$ajax.get('getthumimags'+id).then(res =>{
        console.log("成功")
        this.imgs=res.data.message
      }).catch(err =>{
        console.log("失败")
      })
      this.imgs.forEach((el)=>{
        el.w=300;
        el.h=300;
      })
    },
    methods:{
      handleClose(){
        console.log("888")
      }
    }
  }
</script>

<style scoped>

</style>
