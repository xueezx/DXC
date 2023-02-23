<template>
  <div class="py">
    <div class="content">
      <ul class="erzi">
        <li>散点</li>
        <li>糕点礼盒</li>
      </ul>
      <div class="dhl">
        <!-- 面包屑导航 -->
        <el-breadcrumb class="bc" separator-class="el-icon-arrow-right">
          <p>您现在的位置:</p>
          <el-breadcrumb-item v-for="item in $route.meta.thumb" :key="item">{{
            item
          }}</el-breadcrumb-item>
        </el-breadcrumb>
      </div>
      <div class="tupian">
        <div class="bg">
        <img src="../../assets/gdxl.jpg" alt="" />
        </div>
      </div>
      <div class="neirong"></div>
      <div class="fenye"></div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
.py {
  margin: 0;
  padding: 0;
  width: 100%;
  background: #fcfaf4;
  display: block;
}
.content {
  width: 1200px;
  margin: 0 auto;
}
.erzi {
  width: 100%;
  height: 52px;
  background: #fcf5e1;
  margin: 0 auto;
  border-bottom: 1px solid #d9ae6e;
  margin-bottom: 20px;
  display: block;
  display: flex;

  li {
    width: 192px;
    font-size: 16px;
    color: #333333;
    line-height: 52px;
    text-align: center;
    align-items: center;
  }
}
.bc {
  display: flex;
  align-items: flex-end;
  margin: 30px 0px;
}
.bc p {
  margin-right: 10px;
}
.tupian {
  width: 1200px;
  height: 173px;

  .bg{
    width: 100%;
    height: 125px;
    background: url(../../assets/bg1.png) no-repeat center top;
  background-size: cover;
  img {
    margin: 0 auto;
    padding-top: 47px;
  display: block;

  }
  }
  
}
</style>