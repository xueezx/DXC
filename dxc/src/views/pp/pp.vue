<template>
    <div class="bj">
        <div class="bj-a"></div>

        <div class="hert">
            <el-menu router style="min-width:290px" class="newnav" :default-active="$route.path" mode="horizontal"
                background-color="#e6dfc9" text-color="black" active-background-color="#ceaf59" active-text-color="white">
                <el-menu-item background-color="#ceaf59" index="/home/pp/ppls">品牌历史</el-menu-item>
                <el-menu-item index="/home/pp/jtry">品牌荣誉</el-menu-item>
                <el-menu-item index="/home/pp/ccr">传承人</el-menu-item>
                <el-menu-item index="/home/pp/whhd">文化活动</el-menu-item>
            </el-menu>
        </div>
        <router-view />
    </div>
</template>

<script>
export default {

}
</script>

<style lang="scss" scoped>
.bj {
    background: #fcf9f0;

    //背景图
    .bj-a {
        background: url(@/assets/pp/123208798d8a4d0e-7.jpg) center no-repeat;
        width: 100%;
        height: 600px;
    }
}

.hert {
    width: 100%;
    background-color: #e6dfc9;
    margin-top: -4px;

    .newnav {
        width: 1200px;
        margin: 0 auto;
    }
}
</style>