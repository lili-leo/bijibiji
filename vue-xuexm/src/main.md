// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
// import 'mint-ui/lib/style.css'
import Vue from 'vue'
import App from './App.vue'

import './css/normalize.css'    //全局css属性
import './css/base.css'    //全局css属性
import './css/globa.css'    //全局css属性

import router from './router'  //路由
Vue.use(router)

import Mint from 'mint-ui'     //mint-ui
import 'mint-ui/lib/style.css'
// import mui from "./lib/mui/js/mui.min.js"
Vue.use(Mint)

import VueResource from 'vue-resource'   //后台请求
Vue.use(VueResource)

import './lib/mui/css/mui.css'   //mui第三方包
import './lib/mui/css/icons-extra.css'  //mui扩展第三方包

import VuePreview from 'vue-preview'   //放大器
Vue.use(VuePreview)

import NavBar from "./components/common/navBar"
import common from './components/common/com-mon'
import counter from './components/common/counter'

import Vuex from 'vuex'   //vuex
Vue.use(Vuex)

Vue.component('navBar', NavBar)
Vue.component('common', common)
Vue.component('counter', counter)

import axios from 'axios'   //axios后台请求
Vue.prototype.$ajax = axios   //设置类似ajax   默认请求地址
axios.defaults.baseURL = 'http://182.254.146.100:8899/api/'
import qs from 'qs'
axios.interceptors.request.use((req) => {
  if (req.method === 'post') {
    req.data = qs.stringify(req.data);
  }
  return req;
}, (error) => Promise.reject(error));
// 拦截器操作lodding
// axios.interceptors.request.use(function (config) {
//   Mint.Indicator.open({
//     text: '加载中...',
//     spinnerType: 'fading-circle'
//   });
//   return config
// })
// // 拦截器关闭
// axios.interceptors.response.use(function (config) {
//   Mint.Indicator.close();
//   return config
// })
//全局过滤器
import moment from 'moment'  //时间处理插件
Vue.filter('dateFormat', function (dataStr, pattern = 'YYYY-MM-DD HH:mm:ss') {
  moment(dataStr).format(pattern)
})

// Vue.http.options.root="http://vue.studyit.io";
// 全局设置post时候表单数据格式的组织形式
// Vue.http.options.emulateJSON=true;
Vue.config.productionTip = false

var car=JSON.parse(localStorage.getItem('car') || '[]')
// 获取本地car的数据
var store =new Vuex.Store({
  state:{
    //相当于data
    count:5,
    // car:[]  //将购物车中商品的数据存储起来｛id:11,count:数量
    car:car  //将购物车中商品的数据存储起来｛id:11,count:数量
    //price:价格，selected：false// ｝
  },
  mutations:{
    //相当于methods      //注意操作数据必须用mutations提供的方法，不推荐直接操作，
    //     //因为每个组件都有可能操作的方法
    increment(state){
      state.count++
      // this.$store.commit("方法名")
      // 这种方式和调用父组件方法名类是  this.$emit("父组件中的方法名")
    },
    // jianfa(state,c){
    //   // state.count--   最多两个参数
    //   state.count-=c
    // }
    jianfa(state,obj){
      // state.count--   最多两个参数
      state.count-=(obj.a+obj.b)
    },
    addtocar(state,goodsinfo){
      //点击购物车 把商品信息保存到store中的car中
      //如果之前购物车中有对应商品  则更新数量就行    没有商品就push到car中
      var flag=false
      state.car.some(item=>{
        if(item.id==goodsinfo.id){
          item.count+=parseInt(goodsinfo.count)
          flag=true
          return true   //终止循环
        }
      })
      //如果循环完毕则直接加入到购物车中
      if(!flag){
        state.car.push(goodsinfo)
      }

      // 当更新后把数组存储到本地的localStorage中
      localStorage.setItem('car',JSON.stringify(state.car))
    },
    // updatagoodsinfo(state,goodsinfo){
    //   //修改购物车数量值   同步商品
    //   state.car.some(item=>{
    //     if(item.id==goodsinfo.id){
    //       item.count=parseInt(goodsinfo.count)
    //       return true
    //   }
    //   })
    //   //修改完最新数量 把最新商品数量保存在到本地中
    //   localStorage.setItem('car',JSON.stringify(state.car))
    // }
    updatagoodsinfo(state,goodsinfo){
      //修改购物车数量值   同步商品
      state.car.some(item=>{
        if(item.id==goodsinfo.id){
          item.count=parseInt(goodsinfo.count)
          return true
        }
      })
      //修改完最新数量 把最新商品数量保存在到本地中
      localStorage.setItem('car',JSON.stringify(state.car))
    },
    //根据id删除数据
    removefromcar(state,id){
      state.car.some((item,i)=>{
        if(item.id==id){
          state.car.splice(i,1)
        return true
      }
      })
      localStorage.setItem('car',JSON.stringify(state.car))
    },
    updatagoodsselected(state,goodsinfo){
      state.car.some(item=>{
        if(item.id==goodsinfo.id){
          item.selected=goodsinfo.selected
          return true
        }
      })
      localStorage.setItem('car',JSON.stringify(state.car))
    }
  },
  getters:{
    //只负责对外提供数量，不负责修改数据  修改数据去找mutations的increment方法
    //类似于过滤器   增加一层包装
    //类似于计算属性  computed
    optcount(state){
      return '当前最新的count值是：'+state.count
    },
    getallcount(state){
      var c=0;
      state.car.forEach(item=>{
        c+=item.count
      })
      return c
    },
    getgoodscount(state){
      var o={}
      state.car.forEach(item=>{
        o[item.id]=item.count
      })
      return o
    },
    getgoodsselected(state){
      var o={}
      state.car.forEach(item=>{
        o[item.id]=item.selected
      })
      return o
    },
    getgoodscountandjia(state){
      var o={
        count:0,   //勾选数量
        amount:0   //勾选总价
      }
      state.car.forEach(item=>{
        if(item.selected){
          o.count+=item.count
          o.amount+=item.price*item.count
        }
      })
      return o
    }
  }
  // 总结
// state中的数据不能直接修改，修改需要通过mutations
// 如果组件想要直接从state上获取数据，需要this.￥state.xxx
// 组件修改数据，必须使用mutations提供的方法 this.$store.commit("方法名称"，唯一参数)
// 如果store上的数据在对外提供时候需要包装，通过getters
// this.$store.getters.xxx
})

new Vue({
  el: '#app',
  router,
  store,
  //挂载到实例对象上面去
  components: { App },
  template: '<App/>'
})

