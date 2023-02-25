<template>
  <div class="py">
    <div class="banner"></div>

    <div class="dhl">
      <!-- 导航栏 -->
      <el-menu
        router
        class="el-menu-demo"
        mode="horizontal"
        :default-active="$route.path"
        @select="handleSelect"
        background-color="#e6dfc9"
        text-color="#333"
        active-text-color="#fff"
      >
        <el-menu-item index="/home/eat-home">糕点系列</el-menu-item>
        <el-menu-item index="/home/snack">休闲食品</el-menu-item>
        <el-menu-item index="/home/festive">节日食品</el-menu-item>
        <el-menu-item index="/home/bread">面包主食</el-menu-item>
        <el-menu-item index="/home/nut">坚果系列</el-menu-item>
        <el-menu-item index="/home/frozen">速冻食品</el-menu-item>
      </el-menu>
    </div>

    <!-- main -->
    <div class="fu">
      <ul class="erzi">
        <li>散点</li>
        <li>糕点礼盒</li>
      </ul>
    </div>
    <div class="contain">
      <div class="mbx">
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
      <div class="xzq">
        <el-select class="sel" v-model="value" placeholder="请选择">
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          >
          </el-option>
        </el-select>
        <el-select class="sel" v-model="value" placeholder="请选择">
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value"
          >
          </el-option>
        </el-select>
        <el-input class="input" placeholder="请输入内容"> </el-input
        ><el-button class="btn1">筛选</el-button>
      </div>
      <div class="neirong">
        <div class="nei">
          <div class="gd2-2" v-for="item in 5" :key="item.value">
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
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      options: [
        {
          value: "选项1",
          label: "黄金糕",
        },
        {
          value: "选项2",
          label: "双皮奶",
        },
        {
          value: "选项3",
          label: "蚵仔煎",
        },
        {
          value: "选项4",
          label: "龙须面",
        },
        {
          value: "选项5",
          label: "北京烤鸭",
        },
      ],
      value: "",
    };
  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    },
  },
};
</script>

<style lang="scss" scoped>
.py {
  margin: 0;
  padding: 0;
  width: 100%;
  background: #fcfaf4;
  display: block;
}
.banner {
  width: 100%;
  height: 600px;
  background: url(../../assets/13462731044753d79-6.jpg) no-repeat center top;
  background-size: cover;
}
.dhl {
  width: 100%;
  height: 52px;
  background: #e6dfc9;
}
.el-menu-demo {
  height: 52px;
  width: 1200px;
  margin: 0 auto;
  overflow: hidden;
}

.el-menu-item {
  font-size: 20px;
  line-height: 52px;
  align-items: center;
  width: 160px;
  text-align: center;
}
.el-menu-demo :hover {
  background: #ceaf59 !important;
  color: #ffffff !important;
}
.contain {
  width: 1200px;
  margin: 0 auto;
}
.fu {
  width: 100%;
  background: #fcf5e1;
  border-bottom: 1px solid #d9ae6e;
}
.erzi {
  width: 1200px;
  height: 52px;
  margin: 0 auto;
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

  .bg {
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
.xzq {
  width: 100%;
  display: flex;
  justify-content: space-evenly;
  color: #664f10;
}
.sel {
  width: 346.38px;
  height: 38px;
  padding: 0 10px;
}
.input {
  width: 346.38px;
  height: 38px;
  padding: 0 10px;
  color: #664f10;
}
.btn1 {
  background: #b78439;
  border: 0;
  color: #fff;
  cursor: pointer;
  font-size: 14px;
  height: 40px;
  width: 126px;
  border-radius: 5px;
  align-items: center;
}
.neirong {
  margin-top: 30px;
  margin-bottom: 50px;
  width: 100%;
}
.nei {
  width: 100%;
  justify-content: start;
  display: flex;
  flex-wrap: wrap;
}
.gd2-2 {
  width: 380px;
  height: 380px;
  position: relative;
  overflow: hidden;
  border-radius: 10px;
  margin-right: 10px;
  margin-bottom: 10px;
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
  height: 158px;
  bottom: 0;
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

.d1 {
  display: block;
  width: 44px;
  background-color: #bfa764;
  border-radius: 50%;
  text-align: center;
  align-items: center;
  line-height: 44px;
  font-size: 18px;
  float: right;
  margin: 20px 40px 20px 0;
  border: 1px none;
  color: #fff;
}

.d1:hover {
  background-color: red;
}

.logo {
  position: absolute;
  top: 0;
  left: 0;
}
</style>