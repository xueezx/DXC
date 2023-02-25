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
        <el-menu-item index="/home/pastry">糕点系列</el-menu-item>
        <el-menu-item index="/home/snack">休闲食品</el-menu-item>
        <el-menu-item index="/home/festive">节日食品</el-menu-item>
        <el-menu-item index="/home/bread">面包主食</el-menu-item>
        <el-menu-item index="/home/nut">坚果系列</el-menu-item>
        <el-menu-item index="/home/frozen">速冻食品</el-menu-item>
      </el-menu>
    </div>

    <!-- main -->
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
          <el-carousel trigger="click" height="662px">
            <el-carousel-item>
              <img
                src="../../assets/eat/95040289d67189f2-4_cut1200662.jpg"
                alt=""
              />
            </el-carousel-item>
            <el-carousel-item>
              <img
                src="../../assets/eat/9503358484d5ca8a-4_cut1200662.jpg"
                alt=""
              /> </el-carousel-item
            ><el-carousel-item>
              <img
                src="../../assets/eat/95037701530c9493-3_cut1200662.jpg"
                alt=""
              /> </el-carousel-item
            ><el-carousel-item>
              <img
                src="../../assets/eat/950308372457653a-1_cut1200662.jpg"
                alt=""
              /> </el-carousel-item
            ><el-carousel-item>
              <img
                src="../../assets/eat/9504354436994712-5_cut1200662.jpg"
                alt=""
              />
            </el-carousel-item>
          </el-carousel>
        </div>
        <div class="wenben">
          <div class="dazi">
            <h3>枣花酥</h3>
          </div>
          <div class="xiaozi">
            <div class="left">
              <div></div>
              <div></div>
              <div></div>
              <div></div>
              <div></div>
              <div></div>
            </div>
            <div class="right">
              <p></p>
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
  box-sizing: border-box;
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
.bc {
  display: flex;
  align-items: flex-end;
  margin: 30px 0px;
}
.bc p {
  margin-right: 10px;
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

.el-carousel__item img {
  opacity: 0.75;
  margin: 0;
  width: 1200px;
  line-height: 662px;
}
.neirong {
  width: 100%;
  border: 1px none;
}
.wenben {
  width: 100%;
  height: 420px;
  border: 1px solid #d9ae6e;
  margin-bottom: 60px;
  background: #f9f4e4;
}
.dazi {
  width: 100%;

  h3 {
    color: #996600;
    font-size: 36px;
    margin-top: 30px;
    margin-bottom: 30px;
    margin-left: 66px;
  }
}
</style>