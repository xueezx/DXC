<template>
    <div>
        <img src="../assets/new.jpg" alt="">
        <div class="hert">
            <el-menu 
            router 
            style="min-width:290px" 
            class="newnav" 
            @select="handleSelect"
            :default-active="$route.path" 
            mode="horizontal"
            background-color="#e6dfc9"
            text-color="black" 
            active-background-color="#ceaf59" 
            active-text-color="white">
                <el-menu-item background-color="#ceaf59" index="/home/new/jtnew">集团新闻</el-menu-item>
                <el-menu-item index="/home/new/dfnew">地方动态</el-menu-item>
                <el-menu-item index="/home/new/mtnew">媒体报道</el-menu-item>
            </el-menu>
        </div>
        <!-- 三级路由 -->
        <router-view />
    </div>
</template>

<script>
export default {
    data() {
        return {
            children:[]
        }
    },
    methods: {
        handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
    }
}
</script>

<style lang="scss" scoped>
img {
    display: inline-block;
    width: 100%;
    height: 500px;
    margin-top: -10px;
}

.hert {
    width: 100%;
    background-color: #e6dfc9;
    margin-top: -4px;

    .newnav {
        width: 1200px;
        margin: 0 auto;
    }
}</style>