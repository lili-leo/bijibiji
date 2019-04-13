<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="lib/vue.js"></script>
    <script src="lib/vue-resource-1.3.4.js"></script>
    <style>
        th,td{
            /*height: 300px;*/
            /*width: 600px;*/
            border: 1px solid red;
        }
    </style>
</head>
<body>
<div id="app">
    <lable>NAME:<input type="text" v-model="name"></lable>
    <lable><button @click="add">添加按钮</button></lable>

    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Ctime</th>
            <th>Option</th>
        </tr>
        </thead>
        <tbody>
        <tr v-for="item in list" :key="item.id">
            <td>{{item.id}}</td>
            <td>{{item.name}}</td>
            <td>{{item.ctime}}</td>
            <td><a href="http://baidu.com" @click="del(item.id)">删除</a></td>
        </tr>
        </tbody>
    </table>

</div>
<script>
    new Vue({
        el:"#app",
        data:{
          name:"",
            list:[
                {id:1,name:"五菱宏光",ctime:new Date()},
                {id:2,name:"大众",ctime:new Date()},
                {id:3,name:"宝马",ctime:new Date()},
            ]
        },
        created(){
          //初始化完毕后调用
          this.getAllList()
        },
        methods:{
          add(){
            //添加品牌列表到后台服务器
            //查看数据接口，发送post请求
            //post请求接受3个参数
            // 1 请求的url  2提交的服务器数据 对象 ｛name：this.name｝提交
            //3配置对象，以什么类型提交表单
            //｛emulateJSON:true｝ 以普通表格数据提交
            this.$http.post("http://baidu.com",{name:this.name},{emulateJSON:true})
                .then(result =>{
                  if(result.body.status==0){}
                  else{
                    alert("失败了")
            }
            })
          },
          del(id){
            this.#http.get("baidu"+id).then(result =>{})
          },
          getAllList(){
            //由于导入了包，可通过this.$http来请求
            this.$http.get("http://baidu.com").then(result =>{
              if(result.body.status===0){
                this.list = result.body.message
            }else{
                alert("获取失败")
            }
            })
          }
        }
    })
</script>
</body>
</html>