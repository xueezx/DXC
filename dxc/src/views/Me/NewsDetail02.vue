<template>
  <div>
    <!-- 新闻详情页面 -->
    <div class="two">
      <img src="../../assets/me/shzr-wz.jpg" class="font" />
    </div>

    <div class="content">
      <p class="title">
        2020“我们在一起”集体婚礼举办 稻香村集团参与
      </p>
      <el-divider class="xian"></el-divider>
      <div class="date">
        时间：2021年01月12日 17:06 
        来源：中国网
      </div>
      <div class="cont">
        <img src="../../assets/me/new2.1.jpg" alt="">
        <p>
          12月28日，由北京市民政局、北京市妇联、北京婚姻家庭建设协会、北京电视台、
          稻香村集团等单位联合举办的“我们在一起”——2020北京市抗击疫情最美新人大型公益集体婚礼通过云端的形式举行。
          稻香村集团北京基地作为活动分会场，见证了20对新人的新婚时刻。
        </p>
        <img src="../../assets/me/new2.2.jpg" alt="">
        <p>
          疫情，是2020年的关键词。疫情之下，各行各业的工作者坚守在岗位，通力协作，
          为恢复疫后经济贡献着自己的力量。参与此次集体婚礼的30对新人来自不同行业，在稻香村集团有20对新人参加，
          在甜蜜温馨的音乐声中，他们携手同行，踏上红毯，宣读爱的誓言，交换信物，许下一生的承诺。
        </p>
        <img src="../../assets/me/new2.3.jpg" alt="">
        <p>据了解，稻香村集团的前身是苏州稻香村，始创于1773年的苏州，至今已传承248年，是“稻香村”品牌的创立者、
          “稻香村”糕点类商标的持有者，也是首批认定的中华老字号企业、江苏省非物质文化遗产保护单位。
          稻香村现已经发展成为一家大型现代化企业集团和食品行业龙头企业，销售网络遍布全国，并将产品出口到海外40多个国家和地区。
          2021年，稻香村集团品牌价值突破167.29亿元，在中华老字号中表现抢眼。
        </p>
        <p>
          近些年，稻香村集团积极参与社会公益事业，参与援助抗击新冠肺炎疫情、捐助邢台水灾、捐助山东地区贫困教师、
          向困难群众捐赠月饼等公益活动，累计捐赠善款1000多万余元，捐赠物资价值2000多万元，
          先后荣获“中国优秀责任品牌企业”、“中国优秀企业公民”、“省级扶贫龙头企业”等荣誉。
        </p>

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

.content{
  background-color: #f9f4e4;
  display: flex;
  flex-direction: column;
  align-items: center;
  .title{
    font-size: 24px;
    color: #b78439;
    padding-top: 30px;
  }
  .xian{
    background-color: #b78439;
    width: 90%;
  }
  .date{
    font-size: 12px;
    color: #b78439;
    margin-bottom: 20px;
  }
  .cont{
    margin: 10px 0;
    img{
      width: 800px;
      object-fit: cover;
      margin: 0 auto;
    }
    p{
      width: 90%;
      font-size: 14px;
      color: #333;
      margin: 30px auto;
    }
  }
  
}
</style>