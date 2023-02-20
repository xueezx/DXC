<template>
  <div class="products">
    <div class="bng"></div>
    <div class="main">
      <div class="mianbaoxie">
        <p>您现在的位置：</p>
        <el-breadcrumb separator-class="el-icon-arrow-right" class="n1">
          <el-breadcrumb-item><a href="#">首页</a></el-breadcrumb-item>
          <el-breadcrumb-item><a href="#">产品</a></el-breadcrumb-item>
        </el-breadcrumb>
      </div>
      <div class="gaodian">
        <div class="gd1">
          <img src="../../assets/gdxl.jpg" alt="" />
          <span>了解更多</span>
        </div>
        <div class="gd2">
          <div class="gd2-2">
            <div class="pic">
              <img src="../../assets/szgk.jpg" alt="" />
            </div>
            <div class="txt">
              <h1>
                <a href="/Content/2017/01-05/1534588855.html">山楂锅盔</a>
              </h1>
              <span
                >形似锅盔，馅皮酥松，内如金糕，色泽通透、酸甜可口，疏松软糯，轻轻咬上一...</span
              >
              <a href="#" class="d1">请进</a>
            </div>
            <div class="logo">
              <img src="../../assets/logo.jpg" alt="" />
            </div>
          </div>
        </div>
      </div>
      <div class="xxshipin"></div>
      <div class="jrshipin"></div>
      <div class="mianbao"></div>
      <div class="jianguo"></div>
      <div class="sudong"></div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
.products {
  margin: 0;
  padding: 0;
  width: 100%;
  background: #fcfaf4;
}
.bng {
  width: 100%;
  height: 600px;
  background: url(../../assets/13462731044753d79-6.jpg) no-repeat center top;
  background-size: cover;
}
.main {
  width: 1200px;
  margin: 0 auto;
}

.mianbaoxie {
  display: flex;
  position: relative;
  padding: 10px 0;
}
.n1 {
  position: absolute;
  top: 30px;
  left: 110px;
}
.gd1 {
  width: 100%;
  height: 147px;
  background: url(../../assets/bg1.png);
  > img {
    display: block;
    margin: 0 auto;
    padding-top: 62px;
  }
  span {
    float: right;
    color: #ceaf59;
    font-size: 14px;
    margin-top: -34px;
  }
}
.gd2 {
  width: 100%;
}
.gd2-2 {
  width: 354px;
  position: relative;
  overflow: hidden;
}
.pic {
  img {
    width: 100%;
  }
}
.txt {
  position: absolute;
  background: rgba(0, 0, 0, 0.4);
  padding: 0 20px;
  color: #fff;
  width: 354px;
  height: 150px;
  bottom: -5px;
}
.txt h1 {
  font-size: 24px;
  a {
    color: #fff;
  }
}
.txt span {
  font-size: 12px;
  line-height: 20px;
  display: block;
  padding: 0 20px 0 0;
}
.d1{
    display: block;
    width: 40px;
    height: 40px;
    background-color: green;
    border-radius: 50%;
}
.logo{
    position: absolute;
    top:0;
    left:10px;
}
</style>