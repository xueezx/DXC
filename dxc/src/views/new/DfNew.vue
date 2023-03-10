<template>
  <div class="df">
    <!-- 面包屑导航 -->
    <div class="breadcrumb" style="min-width: 320px">
      <span style="margin-left: 20px; line-height: 100%" class="wz"
        >您现在的位置：</span
      >
      <el-breadcrumb
        style="margin: 0 0 0 20px; display: inline-block"
        separator-class="el-icon-arrow-right"
      >
        <el-breadcrumb-item :to="{ path: '/' }" class="wz"
          >首页</el-breadcrumb-item
        >
        <el-breadcrumb-item class="wz">新闻</el-breadcrumb-item>
        <el-breadcrumb-item
          ><span style="color: red" class="wz"
            >地方动态</span
          ></el-breadcrumb-item
        >
      </el-breadcrumb>
    </div>

    <div class="bt1">
      <img src="../../assets/dfnew.jpg" alt="" />
    </div>

    <router-view />
    <div class="hos" v-show="hideOrShow">
      <!-- 分页遍历 -->
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
        xwfl_id: 2, //新闻类型id
        result: [], // 电影列表
      },
    }
  },
  methods: {
    detail(id) {
      this.$router.push('/home/new/xwfl_id/2/df/' + id)
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
.df {
  width: 100%;
  background-color: #fdfaf5;
}

.breadcrumb {
  width: 1200px;
  margin: auto;
  padding-top: 20px;
  .wz {
    font-weight: normal;
    font-size: 14px;
    color: #333;
  }
}

.bt1 {
  background-image: url('../../assets/bt1.jpg');
  background-size: 100% 100px;
  text-align: center;
}

.bt1 > img {
  width: 120px;
  margin: 35px 0;
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
</style>
