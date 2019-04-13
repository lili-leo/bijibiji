<template>
    <div>
      <h1>评论</h1>
      <common :ppid="this.$route.params.id"></common>
    </div>
</template>

<script>
  export default {
    name: "goodspingl",
    data(){
      return {

      }
    },
    created(){
      console.log(this.$route.params.id)
    }
  }
</script>

<style scoped>

</style>
