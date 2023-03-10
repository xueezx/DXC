<template>
    <div class="contain">
        <!-- 面包屑导航 -->
        <el-breadcrumb class="bc" separator-class="el-icon-arrow-right">
            <p>您现在的位置:</p>
            <el-breadcrumb-item v-for="item in $route.meta.thumb" :key="item">{{ item }}
            </el-breadcrumb-item>
        </el-breadcrumb>
        <div class="top">
            <img src="@/assets/pp/10564648370efb8b-0.jpg" alt="">
        </div>
        <!-- 轮播图 -->
        <div class="lbt">
            <el-carousel :interval="4000" type="card" height="350px">
                <el-carousel-item v-for="item in topBanner" :key="item.id">
                    <div class="bg">
                        <div class="lbta">
                            <img class="lbtb" :src="item.pic" alt="">
                            <span>{{ item.title }}</span>
                        </div>
                    </div>
                </el-carousel-item>
            </el-carousel>
        </div>



        <div class="cards">
            <div class="sl" v-for="item in honor" :key="item.id">
                <div class="card">
                    <img :src=item.pic alt="">
                    <span>{{ item.title }}</span>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import httpApi from '../../http'
export default {
    data() {
        return {
            topBanner: [],
            honor: []
        }
    },


    methods: {
        queryBanner() {
            httpApi.brandApi.queryHonorTop().then(res => {
                // console.log('加载页面上方轮播图', res);
                this.topBanner = res.data.data
            })
        },
        queryHonor() {
            httpApi.brandApi.queryHonor().then(res => {
                // console.log('加载荣誉', res);
                this.honor = res.data.data
            })
        }
    },


    mounted() {
        this.queryBanner()
        this.queryHonor()
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

    .lbt {
        padding: 20px;
        margin-top: 50px;

        .bg {
            width: 580px;
            height: 350px;
            background-image: url('../../assets/pp/jinbian.png');
            background-size: contain;
            background-repeat: no-repeat;
            display: flex;
            background-position: center;

            .lbta {
                margin: auto;
                border-radius: 50%;
                width: 300px;
                height: 300px;
                overflow: hidden;
                position: relative;

                >span {
                    position: absolute;
                    bottom: 0;
                    background-color: #e60012;
                    font-size: 26px;
                    color: white;
                    padding: 15px 0 25px 0;
                    width: 300px;
                    text-align: center;
                }
            }
        }
    }

    .cards {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
        padding-bottom: 20px;

        .sl {
            width: 290px;
            height: 290px;
            background-image: url('@/assets/pp/jinbian.png');
            background-size: contain;
            background-repeat: no-repeat;
            display: flex;
            margin: 10px 0;

            .card {
                width: 250px;
                height: 250px;
                border-radius: 50%;
                overflow: hidden;
                margin: auto;
                align-items: center;
                position: relative;

                >img {
                    width: 100%;
                }

                >span {
                    background-color: #ceaf59;
                    font-size: 18px;
                    color: white;
                    padding: 10px 0 14px 0;
                    width: 250px;
                    text-align: center;
                    position: absolute;
                    left: 0;
                    bottom: 0;
                }
            }
        }
    }
}
</style>