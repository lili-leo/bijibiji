// import Vue from 'vue'
// import Router from 'vue-router'
// // import HelloWorld from '@/components/HelloWorld'
//
// Vue.use(Router)
// // linkActiveClass:'mui-active'
// export default new Router({
//   // linkActiveClass:'mui-active',
//   routes: [
//     {path: '/', redirect: '/home'},
//   ]
// })
//
// // {path: '/', redirect: '/home'},
// // {path: '/home', component: HomeContainer},
import Vue from 'vue'
import Router from 'vue-router'
Vue.use(Router)

import Home from '../components/Home/Home.vue'
import Huiyuan from '../components/Huiyuan/Huiyuan.vue'
import Order from '../components/Order/Order.vue'
import Search from '../components/Search/Search.vue'
Vue.component('home',Home)
Vue.component('huiyuan',Huiyuan)
Vue.component('order',Order)
Vue.component('search',Search)


export default new Router({
  linkActiveClass:'mui-active',
  routes:[
    {path:'/',redirect:'/home'},
    {path:'/home',component:Home},
    {path:'/search',component:Search},
    {path:'/order',component:Order},
    {path:'/huiyuan',component:Huiyuan}
  ]
})
