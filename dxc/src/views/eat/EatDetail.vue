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
      <div class="neirong" v-for="(item,i) in cp" :key="item.id">
        <div class="nei">
          <el-carousel trigger="click" height="662px">
            <el-carousel-item v-for="items in p[i]" :key="items.id">
              <img style="width: 100%" :src="items" alt="" />
            </el-carousel-item>
          </el-carousel>
        </div>
        <div class="wenben">
          <div class="dazi">
            <h3>枣花酥</h3>
          </div>
          <div class="xiaozi">
            <div class="left">
              <p class="title">品名：{{ item.title }}</p>
              <p class="title">规格：{{ item.specs }}</p>
              <p class="title">主料：</p>
              <span class="chengfen">
                <p>{{ item.ingredients }}</p>
              </span>
              <p class="title">口感：{{ item.texture }}</p>
              <p class="title">适应人群：{{ item.for_people }}</p>
              <p class="title">储存条件：{{ item.torage_condition }}</p>
            </div>
            <div class="right">
              <p>{{ item.detail }}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import httpApi from "@/http";
export default {
  data() {
    return {
      name: "",
      id: [],
      value: "",
      value1: [],
      types: [],
      cp: [],
      pic: [],
      p: []
    };
  },
  methods: {
    queryDetail() {
      let id = this.$route.params.id
      httpApi.eatApi.queryFoodsDetailsById({id}).then((res) => {
        console.log(res);
        this.cp = res.data.data;
        let pic = this.cp;
        for (let i = 0; i <= pic.length; i++) {
          this.p.push(pic[i].pic.split("@"));
        }
      });
    },
  },
  mounted() {
    window.scrollTo(0, 0);
    this.queryDetail();
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
  margin-bottom: 50px;
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

.el-carousel__item {
  width: 1200px;
  height: 662px;
  img {
    margin: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
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
.xiaozi {
  width: 100%;
  display: block;
  display: flex;
  .left {
    width: 544px;
    margin-left: 60px;
    font-size: 14px;
    color: #996600;
    display: flex;
    display: block;
    position: relative;
    border-right: 1px solid #e3d19e;

    .title {
      width: 544px;
      display: flex;
      float: left;
      line-height: 35px;
      font-size: 16px;
      p {
        width: 544px;
      }
    }
    .chengfen {
      display: block;
      position: absolute;
      left: 75px;
      top: 75px;
      display: flex;
      padding: 0 5px;
      p {
        display: block;
        line-height: 87px;
        background: #ceaf59;
        color: #fff;
        text-align: center;
        align-items: center;
        margin-right: 5px;
        padding: 0 15px;
      }
    }
  }
  .left :nth-child(3) {
    padding-bottom: 70px;
  }
  .right {
    width: 590px;
    color: #733912;
    font-size: 14px;
    padding: 35px;
  }
}
</style>