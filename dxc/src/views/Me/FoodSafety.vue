<template>
  <div>
    <h3>食品安全</h3>

    <div class="two">
      <img src="../../assets/me/spaq-wz.jpg" class="font" />
    </div>

    <p class="desc">稻香村现代化标准厂房大公开</p>

    <!-- 五块 -->
    <ul class="wukuai">
      <li>
        <div class="kuang"><p>12次</p></div>
        <p>从原料进厂到产品出厂经过12次严格的检验检查</p>
      </li>
      <li>
        <div class="kuang"><p>10万</p></div>
        <p>10万级无菌制药级空气净化、全空调GMP模范车间</p>
      </li>
    </ul>

    <!-- 制作流程 -->
    <div class="step">
      <img src="../../assets/me/step01.jpg">
      <div class="text">
        <p class="id">01</p>
        <p class="name">选料、制陷工艺</p>
        <p class="cont">
          稻香村集团在江苏、山东、湖南、云南等地联合建有原料基地，
          严格把控原料来源，甄选健康新鲜优质原料，面粉、食用油等原材料为集团统一采购模式，
          选用中粮、福临门等大品牌，保证原料品质与质量。制馅采用传统制馅工艺，结合现代化加工，
          保证馅料的传统口味与健康。
        </p>
      </div>
    </div>



  </div>
</template>

<script>
export default {};
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


.desc {
  font-size: 18px;
  color: #ceaf59;
  text-align: center;
}


// 五块
.wukuai{
  display: flex;
  margin: 20px 0;
  li{
    width: 200px;
    margin-right: 50px;
    .kuang{
      width: 200px;
      height: 200px;
      background-image: url("../../assets/me/bk.jpg");
      background-size: contain;
      display: flex;
      margin-bottom: 10px;
      p{
        font-size: 50px;
        color: #ceaf59;
        margin: auto;
      }
    }

    p{
      color: #664f10;
      padding: 10px;
    }
  }
}


//制作流程
.step{
  width: 70%;
  margin: 40px auto;
  display: flex;
  border-radius: 6px;
  overflow: hidden;

  img{
    width: 50%;
  }

  .text{
    padding: 30px;
    background-color: #f9f4e4;

    .id{
      font-size: 48px;
      color: #664f10;
      text-align: center;
    }
    .name{
      font-size: 18px;
      color: #664f10;
      margin: 40px 0;
      text-align: center;
    }
    .cont{
      font-size: 14px;
      color: #333;
    }
  }
}





</style>