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
          thumb: ['首页','产品']
        }
      },
      {
        path: 'eat-home',
        component: () => import('../views/eat/EatHome.vue'),
        meta: {
          thumb: ['首页','产品','糕点系列','散点']
        }
      },
      {
        path: 'index',
        component: () => import('../views/index/Index.vue')
      },
    ]
  },

  {
    path: '/about',
    name: 'about',
    component: () => import('../views/AboutView.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
