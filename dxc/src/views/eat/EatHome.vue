<template>
  <div>
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
        <el-menu-item index="/home/eat-home/pastry">糕点系列</el-menu-item>
        <el-menu-item index="/home/eat-home/snack">休闲食品</el-menu-item>
        <el-menu-item index="/home/eat-home/festive">节日食品</el-menu-item>
        <el-menu-item index="/home/eat-home/bread">面包主食</el-menu-item>
        <el-menu-item index="/home/eat-home/nut">坚果系列</el-menu-item>
        <el-menu-item index="/home/eat-home/frozen">速冻食品</el-menu-item>
      </el-menu>
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
.banner {
  width: 100%;
  height: 600px;
  background: url(../../assets/13462731044753d79-6.jpg) no-repeat center top;
  background-size: cover;
}
.dhl{
    width: 100%;
    height: 52px;
    background: #e6dfc9;
}
.el-menu-demo{
    height: 52px;
    width: 1200px;
    margin: 0 auto;
    overflow: hidden;
}

.el-menu-item {
  font-size: 20px;
    line-height: 52px;
align-items: center;
}
.el-menu-demo :hover{
    background: #ceaf59 !important;
    color: #FFFFFF !important;
}
.contain {
  width: 1200px;
  margin: 0px auto;
  border: 1px solid red;
}
.bc {
  display: flex;
  align-items: flex-end;
  margin: 30px 0px;
}
.bc p {
  margin-right: 10px;
}
</style>