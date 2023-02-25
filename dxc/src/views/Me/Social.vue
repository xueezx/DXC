<template>
  <div>
    <!-- 社会责任 -->
    <div class="two">
      <img src="../../assets/me/shzr-wz.jpg" class="font" />
    </div>


    <div class="news">
      <img src="../../assets/me/new1.jpg" >
      <div class="right">
        <a>
          苏州稻香村集团200多万元食品运抵河南灾区
        </a>
        <p class="date">
          Jul 23,2021
        </p>
        <p class="cont">
          7月22日下午，苏州稻香村集团200多万元食品运抵河南灾区,
          50万包各类糕点、蛋糕、面包产品全部交付给当地慈善总会,
          由慈善总会统一协调分配给受灾民众。
        </p>
        <el-button type="warning" class="enter"
          icon="el-icon-right" circle @click="$router.push('/home/me/social/news-detail')"
        >
        </el-button>
      </div>
    </div>

    <div class="news last">
      <img src="../../assets/me/new2.0.jpg" >
      <div class="right">
        <a>
          2020“我们在一起”集体婚礼举办 稻香村集团参与
        </a>
        <p class="date">
          Jan 12,2021
        </p>
        <p class="cont">
          12月28日，由北京市民政局、北京市妇联、北京婚姻家庭建设协会、北京电视台、
          稻香村集团等单位联合举办的“我们在一起”——2020北京市抗击疫情最美新人大型公益集体婚礼通过云端的形式举行。
          稻香村集团北京基地作为活动分会场，见证了20对新人的新婚时刻。
        </p>
        <el-button type="warning" class="enter"
          icon="el-icon-right" circle @click="$router.push('/home/me/social/news-detail02')"
        >
        </el-button>
      </div>
    </div>


  </div>
</template>

<script>
  export default {
    
  }
</script>

<style lang="scss" scoped>
// 大标题
.two {
  height: 173px;
  background-image: url("../../assets/me/bj1.jpg");
  background-size: contain;
  background-repeat: no-repeat;
  display: flex;
  .font {
    width: 200px;
    margin: auto;
  }
}


.news{
  display: flex;
  border-radius: 4px;
  overflow: hidden;
  margin-bottom: 20px;
  img{
    width: 25%;
    height: 180px;
  }
  .right{
    width: 75%;
    background-color: #f9f4e4;
    padding: 20px;
    a{
      font-size: 18px;
      color: #b78439;
      margin-bottom: 15px;
      display: block;
    }
    .date{
      font-size: 12px;
      color: #b78439;
    }
    .cont{
      font-size: 12px;
      color: #333;
    }
    .enter{
      margin-top: 10px;
      margin-left: 800px;

    }
  }
}

.last{
  padding-bottom: 80px;
  margin-bottom: 0;
}


</style>