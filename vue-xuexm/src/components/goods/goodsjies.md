<template>
    <div>
      <!--<h3>{{info.title}}</h3>-->
    </div>
</template>

<script>
  export default {
    name: "goodsjies",
    data(){
      return {
        info:[],
        // props:['id']
      }
    },
    created(){
      this.$ajax.get('api.goods/getjieshou'+this.$route.params.id)
        .then(res=>{
          this.info=res.data.message
        }).catch(err=>{

         })
    }
  }
</script>

<style scoped>

</style>
