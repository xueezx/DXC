<template>
  <div>
    <img class="banner" src="../../assets/me/banner.jpg" />

    <!-- 导航栏 -->
    <div class="bar">
      <div class="nav">
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
          <el-menu-item index="/home/me/introduction">企业介绍</el-menu-item>
          <el-menu-item index="/home/me/service">服务理念</el-menu-item>
          <el-menu-item index="/home/me/strategy">国际战略</el-menu-item>
          <el-menu-item index="/home/me/branch">分支机构</el-menu-item>
          <el-menu-item index="/home/me/foodsafety">食品安全</el-menu-item>
          <el-menu-item index="/home/me/social">社会责任</el-menu-item>
        </el-menu>
      </div>
    </div>


    <!-- main -->
    <div class="contain">
      <!-- 面包屑导航 -->
      <el-breadcrumb class="bc" separator-class="el-icon-arrow-right">
        <p>您现在的位置:</p>
        <el-breadcrumb-item v-for="item in $route.meta.thumb" :key="item">{{
          item
        }}</el-breadcrumb-item>
      </el-breadcrumb>

      <!-- 二级路由占位符出口 -->
      <router-view />
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
  methods: {
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    },
  },
};
</script>

<style lang="scss" scoped>
* {
  background-color: #fcfaf4;
}
img{
  display: block;
}
.banner {
  width: 100%;
  height: 100%;
}
.bar{
  background-color:  #e5dfc8;
  .nav{
    width: 1200px;
    margin: 0 auto;
  }
}

.el-menu-item {
  font-size: 20px;
}
.contain {
  width: 1200px;
  margin: 0px auto;
  .bc {
    display: flex;
    align-items: flex-end;
    margin: 30px 0px;
    .bc p {
      margin-right: 10px;
    }
  }
}


</style>