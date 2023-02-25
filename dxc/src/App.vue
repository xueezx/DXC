<template>
  <div id="app">
    <!-- 二级路由占位符 -->
    <router-view/>
  </div>
</template>

<style lang="scss">
*{
  margin: 0;
  padding: 0;
  user-select: none;
}
a{
  text-decoration: none;
}
ul,li{
  list-style: none;
}
.contain,.content{
  width: 1200px;
  margin: auto;
}
</style>
