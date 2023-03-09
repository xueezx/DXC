<template>
    <div class="contain">
        <!-- 面包屑导航 -->
        <el-breadcrumb class="bc" separator-class="el-icon-arrow-right">
            <p>您现在的位置:</p>
            <el-breadcrumb-item v-for="item in $route.meta.thumb" :key="item">{{ item }}
            </el-breadcrumb-item>
        </el-breadcrumb>
        <div class="top">
            <img src="@/assets/pp/105615656bbf205cb-2.jpg" alt="">
        </div>
        <div class="main">
            <div class="a">
                <img src="@/assets/pp/ccr_1.jpg" alt="">
                <p>苏州稻香村自1773年以后作坊内的每大类产品都有一个把作师傅作为技术、培训、质量控制和生产的负责人，此人必是当时的整个行业内的领袖人物，直到1956年公私合营前都称为“把作师傅”。为了不让技术外泄并能世代相传，把作师傅终身服务于稻香村，他和东家共同选择德才兼备的学徒传授技艺，并且每代传人数量有限，一般不超过3人，至目前能够确切追溯到的传承谱系如下：
                </p>
                <div class="li" v-for="item in cc" :key="item.id">
                    <h2>{{ item.title }}</h2>
                    <hr>
                    <span>{{ item.info }}</span>
                    <img :src=item.pic alt="">
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import httpApi from '@/http';

export default {
    data() {
        return {
            cc: []
        }
    },
    methods: {
        upload() {
            httpApi.brandApi.queryAllInheritor().then(res => {
                console.log('传承人', res);
                this.cc = res.data.data
            })
        }
    },
    mounted() {
        this.upload()
    }
}
</script>

<style lang="scss" scoped>
.contain {
    background-color: #fcf9f0;

    .bc {
        display: flex;
        align-items: flex-end;
        padding: 30px 0px;

        p {
            margin-right: 10px;
        }
    }

    .top {
        background: url(@/assets/xwhd-bg_03.jpg) no-repeat center;
        text-align: center;

        >img {
            margin-top: 42px;
        }
    }

    .main {
        width: 1200px;
        margin-top: 50px;
        background-color: #f9f4e4;
        display: flex;

        .a {
            width: 1100px;
            margin: 50px;
            text-align: center;

            >img {
                width: 100%;
                display: block;
            }

            >p {
                text-align: start;
                margin: 20px 0;
            }

            .li {

                >h2 {
                    color: #ceaf59;
                    font-weight: lighter;
                    margin: 5px 0;
                }

                >span {
                    display: inline-block;
                    width: 100%;
                    text-align: start;
                    margin: 10px 0 20px 0;
                }

                >img {
                    width: 100%;
                }
            }

        }
    }

}
</style>