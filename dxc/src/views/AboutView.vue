<template>
  <div class="main">
    <img src="../assets/new.jpg" alt="">
    <i style="color: red;margin-left: 50px;">{{ none }}</i>
    <div class="jump2" v-for="item in all" :key="item.id">
      <div class="left2">
        <img :src="item.pic" alt="" />
      </div>
      <div class="right2">
        <h4>{{ item.title }}</h4>
        <p>{{ item.ctime }}</p>
        <span>{{ item.content }}</span>
        <div class="btn">请进</div>
      </div>
    </div>
  </div>
</template>

<script>
import httpApi from '@/http'
export default {
  data() {
    return {
      all: '',
      none: ''
    }
  },
  methods: {
    upDate() {
      let keywords = this.$route.params.text
      console.log(keywords);
      httpApi.newsApi.queryAboutNews({ keywords }).then(res => {
        console.log('相关新闻', res)
        this.all = res.data.data
        if (res.data.data.length == 0) {
          this.none = '没有查到相关新闻，请另寻关键字查找!!!'
        }
      })
    }
  },
  mounted() {
    if (this.$route.params.text) {
      this.all = ''
      this.upDate()
    }
  }
}
</script>

<style lang="scss" scoped>
.main {
  background-color: #FDFAF5;

  img {
    display: block;
    width: 100%;
    height: 600px;
    margin-top: -10px;
  }

  .jump2 {
    display: flex;
    width: 1200px;
    margin: 0 auto;
    padding-bottom: 20px;

    .right2 {
      background-color: #f9f4e4;
      width: 57%;
      padding: 20px;

      >h4 {
        color: #c28f39;
        font-size: 16px;
        font-weight: lighter;

        &:hover {
          color: rgb(231, 77, 77);
        }
      }

      >span {
        display: inline-block;
      }

      >p {
        margin: 10px 0 0 0;
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

      >img {
        display: block;
        width: 100%;
        height: 250px;
      }
    }
  }
}
</style>