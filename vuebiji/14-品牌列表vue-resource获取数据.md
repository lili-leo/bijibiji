<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="./lib/vue.js"></script>
    <script src="./lib/vue-resource-1.3.4.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="./lib/moment.js"></script>
    <style>
        th,td{
            height: 20px;
            /*width: 260px;*/
            font-size: 40px;
            border: 1px solid red;
            text-align: center;
        }
        table{
            border-collapse:collapse;
        }
        input{
            margin-top: 30px;
            margin-bottom: 30px;
            height: 40px;
            width: 200px;
        }
    </style>
</head>
<body>
<div id="app">
    <lable>Id:
        <input type="text" v-model="id">
    </lable>
    <lable>Name:
        <input type="text" v-model="name">
    </lable>

    <input type="button" value="添加" @click="add" :style="{color:'red'}">

    <lable>搜索关键字:
        <input type="text" v-model="keyword">
    </lable>
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Time</th>
            <th>Del</th>
        </tr>
        </thead>
        <tbody>
        <tr v-for="(item,i) in list" :key="i">
            <td>{{item.id}}</td>
            <td>{{item.name}}</td>
            <td>{{item.time | dataFormat(pattern)}}</td>
            <td><a href="javascript:;" @click.prevent="jian(item.id)">删除</a></td>
        </tr>
        </tbody>
    </table>
</div>
<script>
  Vue.filter('dataFormat',function (dataStr,pattern='YYYY-MM-DD HH:mm:ss') {
    return moment(dataStr).format(pattern)
  })
  // Vue.http.options.root="http://vue.studyit.io";
  // // 全局设置post时候表单数据格式的组织形式
  // Vue.http.options.emulateJSON=true;
  var vm = new Vue({
    el:'#app',
    data(){
      return {
        list:[],
        // list:[
        //   {id:1,name:'奔驰',time:new Date()},
        //   {id:2,name:'宝马',time:new Date()},
        //   {id:3,name:'奇瑞',time:new Date()},
        // ],
        id:"",
        name:"",
        keyword:''
      }
    },

    // 初始化数据
    created(){
      this.getAllList()
      // this.axios.get(url)
      //   .then(res=>{
      //     this.list=this.res.data.message
      // })
      //   .catch(err=>{
      //     console.log('失败了')
      // })
    },

    methods: {
      getAllList(){
        this.axios.get(urldata)
          .then(res=>{
          this.list=this.res.data.message
      })
      .catch(err=>{
          console.log('失败了')
      })
      },
      add(){
        let urldata=[
            {id:1,name:'奔驰',time:new Date()},
            {id:2,name:'宝马',time:new Date()},
            {id:3,name:'奇瑞',time:new Date()},
          ],
        this.axios.post('./lib/qingqiu',{name:this.name},{emulateJSON:true}).then(res=>{
            this.list=this.list.concat(res.data.message)
        })
          .catch(err=>{})
        this.list.push({id:this.id,name:this.name,time:new Date()})
        this.id=""
        this.name=""
      },
      jian(id){
        // 根据id找到要删除对象的索引
        // for(var i=0,i<this.list.length,i++)
        // this.list.some((item,i) =>{
        //   if(item.id==id){
        //     this.list.splice(i,1)
        // }
        // })
        // var idd=id-1
        // this.list.splice(idd,1)
        var index=this.list.findIndex((item,i) => {
          if(item.id==id){
          return true;
        }
      })
        this.list.splice(index,1)
      },
    }
  })
  // 第一个参数永远是是过滤器管道符传过来的数据
  // Vue.filter('过滤器名称',function () {
  //
  // })
</script>
</body>
</html>