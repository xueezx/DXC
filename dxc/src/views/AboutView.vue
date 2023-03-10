<template>
  <div>
    <img src="../assets/new.jpg" alt="">
    <div>
      {{ keywords }}
    </div>
  </div>
</template>

<script>
import httpApi from '@/http'
export default {
  data() {
    return {
      keywords: ''
    }
  },
  methods: {
    upDate() {
      let keywords = this.$route.params.text
      // console.log(this.$route.params.text);
      httpApi.newsApi.queryAboutNews(keywords).then(res => {
        console.log('相关新闻', res)
      })
    }
  },
  mounted() {
    this.upDate()
  }
}
</script>

<style lang="scss" scoped>
img {
  display: inline-block;
  width: 100%;
  height: 500px;
  margin-top: -10px;
}
</style>