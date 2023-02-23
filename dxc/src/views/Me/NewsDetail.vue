<template>
  <div>
    <!-- 新闻详情页面 -->
    <div class="two">
      <img src="../../assets/me/shzr-wz.jpg" class="font" />
    </div>

    <div class="content">
      <p class="title">
        苏州稻香村集团200多万元食品运抵河南灾区
      </p>
      <el-divider class="xian"></el-divider>
      <div class="date">
        时间:2021年07月23日 15:56 
        来源：消费日报
      </div>
      <div class="cont">
        <img src="../../assets/me/new4.jpg" alt="">
        <p>
          7月22日下午，苏州稻香村集团200多万元食品运抵河南灾区，50万包各类糕点、蛋糕、面包产品全部交付给当地慈善总会，
          由慈善总会统一协调分配给受灾民众。这批救灾物资，由苏州稻香村集团连夜调动，
          从苏州、山东、北京三地工厂出货，力求最快时间到达灾区，缓解前线物资紧缺问题，助力政府防汛救灾。
        </p>
        <img src="../../assets/me/new2.jpg" alt="">
        <p>
          稻香村集团河南分公司负责人刘成胜表示，了解到灾情后，稻香村集团第一时间调度资源，
          河南分公司承接响应，确定好接收单位后，集结5车物资连夜直奔郑州。
          物资抵达后，不少当地民众在微博、微信等社交平台分享照片，表示感谢，
          郑州日报的记者报道了此次捐赠活动。“希望稻香村的物资可以缓解受灾地区的燃眉之急”，刘成胜说。
        </p>
        <img src="../../assets/me/new3.jpg" alt="">
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