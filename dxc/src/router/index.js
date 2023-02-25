import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    redirect: '/home/index',
  },
  {
    path: '/home',
    name: 'home',
    component: HomeView,
    children: [
      {
        path: 'eat',
        component: () => import('../views/eat/Eat.vue'),
        meta: {
          thumb: ['首页', '产品']
        }
      },
      // {
      //   path: 'eat-home',
      //   redirect: '/home/eat-home/pastry',
      // },

      {
        path: 'index',
        component: () => import('../views/index/Index.vue')
      },
      {
        path: 'bread',
        component: () => import('../views/eat/Bread.vue')
      },
      {
        path: 'nut',
        component: () => import('../views/eat/Nut.vue')
      },
      {
        path: 'eat-home',
        component: () => import('../views/eat/EatHome.vue'),
      },
      {
        path: 'snack',
        component: () => import('../views/eat/Snack.vue')
      },
      {
        path: 'festive',
        component: () => import('../views/eat/Festive.vue'),
      },
      {
        path: 'frozen',
        component: () => import('../views/eat/Frozen.vue')
      },
      {
        path: 'pastry',
        component: () => import('../views/eat/Pastry.vue')
      },

      {
        path: 'me',
        redirect:'/home/me/introduction'
      },
      {
        path: 'me',
        component: ()=>import('../views/Me/Me.vue'),
        children:[
          {
            path:'introduction',
            component:()=>import('../views/Me/Introduction.vue'),
            meta:{
              thumb:['首页','我们','企业介绍']
            }
          },
          {
            path:'service',
            component:()=>import('../views/Me/Service.vue'),
            meta:{
              thumb:['首页','我们','服务理念']
            }
          },
          {
            path:'strategy',
            component:()=>import('../views/Me/Strategy.vue'),
            meta:{
              thumb:['首页','我们','国际战略']
            }
          },   
          {
            path:'branch',
            component:()=>import('../views/Me/Branch.vue'),
            meta:{
              thumb:['首页','我们','分支机构']
            }
          },   
          {
            path:'foodsafety',
            component:()=>import('../views/Me/FoodSafety.vue'),
            meta:{
              thumb:['首页','我们','食品安全']
            }
          },
          {
            path:'social',
            component:()=>import('../views/Me/Social.vue'),
            meta:{
              thumb:['首页','我们','社会责任']
            }
          },
          {
            path:'social/news-detail',
            component:()=>import('../views/Me/NewsDetail.vue'),
            meta:{
              thumb:['首页','我们','社会责任','新闻详情']
            }
          },
          {
            path:'social/news-detail02',
            component:()=>import('../views/Me/NewsDetail02.vue'),
            meta:{
              thumb:['首页','我们','社会责任','新闻详情']
            }
          },


        ],
      },
    ]
  },

  {
    path: '/about',
    name: 'about',
    component: () => import('../views/AboutView.vue')
  },



]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
