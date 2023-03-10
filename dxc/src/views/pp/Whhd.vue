<template>
  <div class="contain">
    <!-- 面包屑导航 -->
    <el-breadcrumb class="bc" separator-class="el-icon-arrow-right">
      <p>您现在的位置:</p>
      <el-breadcrumb-item v-for="item in $route.meta.thumb" :key="item"
        >{{ item }}
      </el-breadcrumb-item>
    </el-breadcrumb>

    <div class="top">
      <img src="@/assets/pp/1056247552cdce121-d.jpg" alt="" />
    </div>

    <div class="hos" v-show="hideOrShow">
      <!-- 分页遍历 -->
      <!-- $router.push('/home/new/jtnew/jt/' + item.id) -->
      <div
        @click="detail(item.id)"
        class="jump2"
        v-for="item in news"
        :key="item.id"
      >
        <div class="left2">
          <img :src="item.pic" alt="" />
        </div>
        <div class="right2">
          <h4>{{ item.title }}</h4>
          <p>{{ item.time }}</p>
          <span>{{ item.content }}</span>
          <div class="btn">请进</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import httpApi from '@/http'

export default {
  data() {
    return {
      hideOrShow: true,
      news: [],
      newsData: {
        // 保存电影数据
        page: 1, // 当前页码
        pagesize: 10, // 每页多少条
        total: 999, // 总条目数
        xwfl_id: 1, //新闻类型id
        result: [], // 电影列表
      },
    }
  },
  methods: {
    detail(id) {
      this.$router.push('/home/new/xwfl_id/1/jt/' + id)
      if (id) {
        this.hideOrShow = false
      }
    },
    changeCurrentPage(page) {
      this.newsData.page = page // 修改当前页
      this.queryMovies() // 重新加载当前页的新闻列表
    },
    upload() {
      let params = {
        page: this.newsData.page,
        pagesize: this.newsData.pagesize,
        xwfl_id: this.newsData.xwfl_id,
      }
      httpApi.newsApi.queryNewsByPage(params).then(res => {
        // console.log('新闻列表', res)
        this.news = res.data.data
      })
    },
  },
  mounted() {
    this.upload()
  },
}
</script>

<style lang="scss" scoped>
.contain {
  background-color: #fcf9f0;

  .bc {
    display: flex;
    align-items: flex-end;
    padding: 30px 0px;

    p {
      margin-right: 10px;
    }
  }

  .top {
    background: url(@/assets/xwhd-bg_03.jpg) no-repeat center;
    text-align: center;
    margin-bottom: 60px;

    > img {
      margin-top: 42px;
    }
  }

  .hos {
    .jump2 {
      display: flex;
      width: 1200px;
      margin: 20px auto;

      .right2 {
        background-color: #f9f4e4;
        width: 57%;
        padding: 20px;

        > h4 {
          color: #c28f39;
          font-size: 16px;
          font-weight: lighter;

          &:hover {
            color: rgb(231, 77, 77);
          }
        }

        > span {
          display: inline-block;
        }

        > p {
          margin: 10px 0;
          color: #c28f39;
          font-size: 12px;
        }

        .btn {
          margin: 20px 0 0 600px;
          font-size: 16px;
          color: white;
          text-align: center;
          line-height: 45px;
          background-color: #bfa764;
          width: 45px;
          height: 45px;
          border-radius: 100%;

          &:hover {
            color: rgb(231, 77, 77);
          }
        }
      }

      .left2 {
        width: 43%;
        overflow: hidden;

        > img {
          display: block;
          width: 100%;
          height: 250px;
        }
      }
    }

    :first-child {
      flex-direction: row-reverse;

      .left2 {
        width: 650px;
        overflow: hidden;

        > img {
          display: block;
          width: 100%;
          height: 350px;
        }
      }

      .right2 {
        background-color: #f9f4e4;
        height: 290px;
        width: 550px;
        padding: 30px;

        > h4 {
          color: #c28f39;
          font-size: 20px;
          font-weight: lighter;

          &:hover {
            color: rgb(231, 77, 77);
          }
        }

        > span {
          display: inline-block;
          font-size: 20px;
        }

        > p {
          margin: 10px 0;
          color: #c28f39;
          font-size: 16px;
        }

        .btn {
          font-size: 20px;
          color: white;
          text-align: center;
          line-height: 60px;
          background-color: #bfa764;
          width: 60px;
          height: 60px;
          border-radius: 100%;
          margin-left: 10px;

          &:hover {
            color: rgb(231, 77, 77);
          }
        }
      }
    }
  }
}
</style>
