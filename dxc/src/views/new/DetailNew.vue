<template>
  <div class="oneNew">
    <h2>{{ this.new.title }}</h2>
    <hr color="#ceaf59" />
    <span style="color: #ddb864">时间：{{ this.new.ctime }}</span>
    <div v-for="item in detail">
      <img :src="item.new_pic" alt="" />
      <p>{{ item.pic_title }}</p>
      <p>{{ item.new_content }}</p>
    </div>
  </div>
</template>

<script>
import httpApi from '@/http'

export default {
  data() {
    return {
      id: this.$route.params.id,
      new: {
        content: '',
        ctime: '',
        detail: '',
        id: '',
        pic: '',
        title: '',
        xwfl_id: '',
      },
      //   new: [],
      detail: [],
    }
  },
  methods: {
    init() {
      httpApi.newsApi.queryDetail({ id: this.id }).then(res => {
        console.log(res)
        this.new = res.data.data[0]
        this.detail.push(...JSON.parse(this.new.detail))
        console.log(this.detail)
      })
    },
  },
  mounted() {
    this.init()
  },
}
</script>

<style lang="scss" scoped>
.oneNew {
  width: 1200px;
  margin: 0 auto;
  background-color: #f9f4e4;
  text-align: center;

  > h2 {
    color: #c28f39;
    font-weight: lighter;
    font-size: 30px;
    margin-bottom: 20px;
    padding-top: 50px;
  }
}
</style>
