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
      {
        path: 'eat-home',
        redirect: '/home/eat-home/pastry',
      },
      {
        path: 'eat-home',
        component: () => import('../views/eat/EatHome.vue'),
        children: [
          {
            path: 'pastry',
            component: () => import('../views/eat/Pastry.vue'),
            meta: {
              thumb: ['首页', '产品', '糕点系列', '散点']
            }
          }, {
            path: 'nut',
            component: () => import('../views/eat/Nut.vue'),
            meta: {
              thumb: ['首页', '产品', '坚果系列', '散点']
            }
          },
          {
            path: 'bread',
            component: () => import('../views/eat/Bread.vue'),
            meta: {
              thumb: ['首页', '产品', '坚果系列', '散点']
            }
          },
          {
            path: 'festive',
            component: () => import('../views/eat/Festive.vue'),
            meta: {
              thumb: ['首页', '产品', '坚果系列', '散点']
            }
          },
          {
            path: 'frozen',
            component: () => import('../views/eat/Frozen.vue'),
            meta: {
              thumb: ['首页', '产品', '坚果系列', '散点']
            }
          },
          {
            path: 'snack',
            component: () => import('../views/eat/Snack.vue'),
            meta: {
              thumb: ['首页', '产品', '坚果系列', '散点']
            }
          },

        ]
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
  },

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
