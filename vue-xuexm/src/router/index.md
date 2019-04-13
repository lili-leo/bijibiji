import Vue from 'vue'
import Router from 'vue-router'
// import HelloWorld from '@/components/HelloWorld'

import home from '../components/home/home.vue'
import member from '../components/member/member.vue'
import search from '../components/search/search.vue'
import shopcart from '../components/shopcart/shopcart.vue'
import newslist from '../components/news/newslist.vue'
import newsinfo from '../components/news/newsinfo'
import Photoshare from '../components/photo/photoshare.vue'
import Photodetail from '../components/photo/photodetail'
import Goodslist from '../components/goods/goodslist'
import Goodsinfo from '../components/goods/goodsinfo'
import Goodsjies from '../components/goods/goodsjies'
import Goodspingl from '../components/goods/goodspingl'

Vue.use(Router)
export default new Router({
  linkActiveClass:'mui-active',   //mui的默认高亮类
  routes: [
    {path: '/', redirect: '/home'},
    {path: '/home', component: home},
    {path: '/member',component:member},
    {path: '/shopcart',component:shopcart},
    {path: '/search',component:search},
    {path: '/home/newslist',component:newslist},
    {path: '/home/newsinfo',component:newsinfo},
    {path: '/home/photoshare',component:Photoshare},
    {path: '/home/photodetail/:id',component:Photodetail},
    {path: '/home/goodslist',component:Goodslist},
    {path: '/home/goodsinfo/:id',component:Goodsinfo},
    {path: '/home/goodsjies/:id',component:Goodsjies},
    {path: '/home/goodspingl/:id',component:Goodspingl}
  ]
})

// {path: '/', redirect: '/home'},
// {path: '/home', component: HomeContainer},
