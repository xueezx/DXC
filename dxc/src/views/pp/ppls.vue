<template>
    <div class="bj">
        <div class="bj-a"></div>
        <!-- 版心 -->
        <div class="contain">
            <!-- 面包屑导航 -->
            <el-breadcrumb class="bc" separator-class="el-icon-arrow-right">
                <p>您现在的位置:</p>
                <el-breadcrumb-item v-for="item in $route.meta.thumb" :key="item">{{
                    item
                }}</el-breadcrumb-item>
                
            </el-breadcrumb>
        </div>
    </div>
</template>

<script>
    export default {
        
    }
</script>

<style lang="scss" scoped>
.bj{
    background: url(@/assets/me/banner.jpg);
    width: 100%;
    height: 600px;
}
</style>