<template>
  <div>
    <!-- 大型现代化加工厂 -->
    <div class="two">
      <img src="../../assets/me/jgc.jpg" class="font">
    </div>

    <template>      
      <el-carousel :interval="4000" type="card" height="200px">
        <el-carousel-item v-for="item in 4" :key="item">
          <h3 class="medium">{{ item }}</h3>
        </el-carousel-item>
      </el-carousel>
    </template>

    <!-- 分公司介绍 -->
    <div class="two2">
      <img src="../../assets/me/fgs.jpg" class="font2">
    </div>

    <ul class="fgs">
      <li>
          <div>
            <p class="name">苏州稻香村食品有限公司</p>
            <p class="xx">地址:  苏州工业园区唯亭镇唯文路19 号</p>
            <p class="xx">邮编:  18100000000</p>
            <p class="xx">电话:  0512-87182818</p>
            <p class="xx">传真:  0512-87182818</p>
            <p class="xx">网址:  www.daoxiangcun.cn</p>
          </div>
      </li>
    </ul>



  </div>
</template>

<script>
  export default {
    
  }
</script>

<style lang="scss" scoped>
.two{
  height: 173px;
  background-image: url('../../assets/me/jgc-bj.jpg');
  background-size: contain; 
  background-repeat: no-repeat;
  display: flex;
}
.font{
  width: 380px;
  margin: auto;
}

.two2{
  height: 173px;
  background-image: url('../../assets/me/bj1.jpg');
  background-size: contain; 
  background-repeat: no-repeat;
  display: flex;
}

.font2{
  width: 200px;
  margin: auto;
}

//轮播图,走马灯
.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 200px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
}

//分公司
.fgs{
  display: flex;
  padding-bottom: 80px;
  li{
    width: calc(100% / 3);
    background-color: #fff;
    padding: 20px;
    border: 1px solid #c9b053;
    div{
      .name{
        font-size: 24px;
        color: #b78439;
        margin-bottom: 20px;
      }
      .xx{
        font-size: 16px;
        color: #333;
        margin-bottom: 10px;
      }
    }
  }
}







</style>