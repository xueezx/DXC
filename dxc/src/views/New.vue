<template>
    <div>
        <img src="../assets/new.jpg" alt="">
        <div class="hert">
            <el-menu router style="min-width:290px" class="newnav" @select="handleSelect" :default-active="$route.path"
                mode="horizontal" background-color="#e6dfc9" text-color="black" active-background-color="#ceaf59"
                active-text-color="white">
                <el-menu-item v-for="item in this.newsNav" :key="item.id" @click="searchNew(item.id)"
                    :index="'/home/new/xwfl_id/' + item.id">{{
                        item.title }}</el-menu-item>
            </el-menu>
        </div>
        <!-- 三级路由 -->
        <router-view />
    </div>
</template>

<script>
import httpApi from '@/http';

export default {
    data() {
        return {
            // children: []
            newsNav: []
        }
    },
    methods: {
        handleSelect(key, keyPath) {
            console.log(key, keyPath);
        },
        newsData() {
            httpApi.newsApi.queryNewsType().then(res => {
                console.log('新闻分类', res);
                this.newsNav = res.data.data
            })
        },
        searchNew(id) {
            console.log(id);
            this.$router.push('/home/new/xwfl_id/' + id)
        }
    },
    mounted() {
        this.newsData()
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

        :first-child {
            background-color: #e6dfc9;
        }
    }
}
</style>