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
        path: 'about/:text',
        name: 'about',
        component: () => import('../views/AboutView.vue')
      },
      //news
      {
        path: 'new',
        component: () => import('../views/New.vue'),
        redirect: '/home/new/xwfl_id/1',
        children: [
          {
            path: 'xwfl_id/1',
            component: () => import('../views/new/JtNew.vue'),
            children: [
              {
                path: 'jt/:id',
                component: () => import('../views/new/DetailNew.vue')
              }

            ]
          },
          {
            path: 'xwfl_id/2',
            component: () => import('../views/new/DfNew.vue'),
            children: [
              {
                path: 'df/:id',
                component: () => import('../views/new/DetailNew.vue')
              },
            ]
          },
          {
            path: 'xwfl_id/3',
            component: () => import('../views/new/MtNew.vue'),
            children: [
              {
                path: 'mt/:id',
                component: () => import('../views/new/DetailNew.vue')
              }
            ]
          },
        ]
      },

      //产品
      {
        path: 'eat',
        component: () => import('../views/eat/Eat.vue'),
        meta: {
          thumb: ['首页', '产品']
        }
      },
      {
        path: 'bread',
        component: () => import('../views/eat/Bread.vue'),
        meta: {
              thumb: ['首页', '产品', '面包主食']
            }
      },
      {
        path: 'nut',
        component: () => import('../views/eat/Nut.vue'),
        meta: {
              thumb: ['首页', '产品', '坚果系列']
            }
      },
      {
        path: 'eat-detail/:id',
        component: () => import('../views/eat/EatDetail.vue'),
        meta: {
              thumb: ['首页', '产品','产品详情']
            }
      },
      {
        path: 'snack',
        component: () => import('../views/eat/Snack.vue'),
        meta: {
              thumb: ['首页', '产品', '休闲食品']
            }
      },
      {
        path: 'festive',
        component: () => import('../views/eat/Festive.vue'),
        meta: {
              thumb: ['首页', '产品', '节日食品']
            }
      },
      {
        path: 'frozen',
        component: () => import('../views/eat/Frozen.vue'),
        meta: {
              thumb: ['首页', '产品', '速冻食品']
            }
      },
      {
        path: 'pastry',
        component: () => import('../views/eat/Pastry.vue'),
        meta: {
              thumb: ['首页', '产品', '糕点系列']
            }
      },

      //首页
      {
        path: 'index',
        // redirect:'/home/index',
        component: () => import('../views/index/Index.vue')
      },

      //品牌
      {
        path: 'pp',
        redirect: '/home/pp/items',
      },

      {
        path: 'pp',
        component: () => import('../views/pp/pp.vue'),
        children: [
          {
            path: 'items',
            component: () => import('../views/pp/Item.vue'),
            meta: {
              thumb: ['首页', '品牌']
            }
          },

          {
            path: 'ppls',
            component: () => import('../views/pp/ppls.vue'),
            meta: {
              thumb: ['首页', '品牌', '品牌历史']
            }
          },
          {
            path: 'jtry',
            component: () => import('../views/pp/Jtry.vue'),
            meta: {
              thumb: ['首页', '品牌', '集团荣誉']
            }
          },
          {
            path: 'ccr',
            component: () => import('../views/pp/Ccr.vue'),
            meta: {
              thumb: ['首页', '品牌', '传承人']
            }
          },
          {
            path: 'whhd',
            component: () => import('../views/pp/Whhd.vue'),
            meta: {
              thumb: ['首页', '品牌', '文化活动']
            }
          },
        ]
      },

      //我们

      // {
      //   path: 'me',
      //   redirect:'/home/me/introduction'
      // },
      {
        path: 'me',
        redirect: 'me/introduction',
        component: () => import('../views/Me/Me.vue'),
        children: [
          {
            path: 'introduction',
            component: () => import('../views/Me/Introduction.vue'),
            meta: {
              thumb: ['首页', '我们', '企业介绍']
            }
          },
          {
            path: 'service',
            component: () => import('../views/Me/Service.vue'),
            meta: {
              thumb: ['首页', '我们', '服务理念']
            }
          },
          {
            path: 'strategy',
            component: () => import('../views/Me/Strategy.vue'),
            meta: {
              thumb: ['首页', '我们', '国际战略']
            }
          },
          {
            path: 'branch',
            component: () => import('../views/Me/Branch.vue'),
            meta: {
              thumb: ['首页', '我们', '分支机构']
            }
          },
          {
            path: 'foodsafety',
            component: () => import('../views/Me/FoodSafety.vue'),
            meta: {
              thumb: ['首页', '我们', '食品安全']
            }
          },
          {
            path: 'social',
            component: () => import('../views/Me/Social.vue'),
            meta: {
              thumb: ['首页', '我们', '社会责任']
            }
          },
          {
            path: 'social/news-detail',
            component: () => import('../views/Me/NewsDetail.vue'),
            meta: {
              thumb: ['首页', '我们', '社会责任', '新闻详情']
            }
          },
          {
            path: 'social/news-detail02',
            component: () => import('../views/Me/NewsDetail02.vue'),
            meta: {
              thumb: ['首页', '我们', '社会责任', '新闻详情']
            }
          },


        ],
      },
    ]
  },





]


const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
