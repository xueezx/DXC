<template>
  <div>
    <h3>分支机构</h3>

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

    <el-row>
      <el-col :span="8">
        <div class="bg">
          <el-descriptions title="苏州稻香村食品有限公司" column="1" class="fgs">
            <el-descriptions-item label="地址">苏州工业园区唯亭镇唯文路19 号</el-descriptions-item>
            <el-descriptions-item label="邮编">18100000000</el-descriptions-item>
            <el-descriptions-item label="电话">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="传真">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="网址">www.daoxiangcun.cn</el-descriptions-item>
          </el-descriptions>
        </div>
      </el-col>
      <el-col :span="8">
        <div class="bg">
          <el-descriptions title="苏州稻香村食品有限公司" column="1" class="fgs">
            <el-descriptions-item label="地址">苏州工业园区唯亭镇唯文路19 号</el-descriptions-item>
            <el-descriptions-item label="邮编">18100000000</el-descriptions-item>
            <el-descriptions-item label="电话">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="传真">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="网址">www.daoxiangcun.cn</el-descriptions-item>
          </el-descriptions>
        </div>
      </el-col>
      <el-col :span="8">
        <div class="bg">
          <el-descriptions title="苏州稻香村食品有限公司" column="1" class="fgs">
            <el-descriptions-item label="地址">苏州工业园区唯亭镇唯文路19 号</el-descriptions-item>
            <el-descriptions-item label="邮编">18100000000</el-descriptions-item>
            <el-descriptions-item label="电话">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="传真">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="网址">www.daoxiangcun.cn</el-descriptions-item>
          </el-descriptions>
        </div>
      </el-col>
    </el-row>

    <el-row>
      <el-col :span="8">
        <div class="bg">
          <el-descriptions title="苏州稻香村食品有限公司" column="1" class="fgs">
            <el-descriptions-item label="地址">苏州工业园区唯亭镇唯文路19 号</el-descriptions-item>
            <el-descriptions-item label="邮编">18100000000</el-descriptions-item>
            <el-descriptions-item label="电话">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="传真">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="网址">www.daoxiangcun.cn</el-descriptions-item>
          </el-descriptions>
        </div>
      </el-col>
      <el-col :span="8">
        <div class="bg">
          <el-descriptions title="苏州稻香村食品有限公司" column="1" class="fgs">
            <el-descriptions-item label="地址">苏州工业园区唯亭镇唯文路19 号</el-descriptions-item>
            <el-descriptions-item label="邮编">18100000000</el-descriptions-item>
            <el-descriptions-item label="电话">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="传真">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="网址">www.daoxiangcun.cn</el-descriptions-item>
          </el-descriptions>
        </div>
      </el-col>
      <el-col :span="8">
        <div class="bg">
          <el-descriptions title="苏州稻香村食品有限公司" column="1" class="fgs">
            <el-descriptions-item label="地址">苏州工业园区唯亭镇唯文路19 号</el-descriptions-item>
            <el-descriptions-item label="邮编">18100000000</el-descriptions-item>
            <el-descriptions-item label="电话">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="传真">0512-87182818</el-descriptions-item>
            <el-descriptions-item label="网址">www.daoxiangcun.cn</el-descriptions-item>
          </el-descriptions>
        </div>
      </el-col>
    </el-row>



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

//九宫格
.bg {
  background: #fff;
}

//描述列表
.fgs{
  border: 2px solid #c9b053;
  margin: 1px;
  padding: 10px 20px;
}





</style>