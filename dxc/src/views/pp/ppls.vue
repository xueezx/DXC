<template>
    <!-- 版心 -->
    <div class="contain">
        <!-- 面包屑导航 -->
        <el-breadcrumb class="bc" separator-class="el-icon-arrow-right">
            <p>您现在的位置:</p>
            <el-breadcrumb-item v-for="item in $route.meta.thumb" :key="item">{{ item }}
            </el-breadcrumb-item>
        </el-breadcrumb>

        <div class="top">
            <img src="@/assets/pp/105552272b981aaec-1.jpg" alt="">
        </div>

        <div class="ls">
            <div class="timeTop">
                <div class="jiantou"></div>
                <span>2022</span>
            </div>
            <div class="total" v-for="item in ls" :key="item.id">
                <div class="left">
                    <div class="kuang">
                        <div class="l1">
                            <span>{{ item.title }}</span>
                            <img src="@/assets/pp/left_bg.jpg" alt="">
                        </div>
                        <div class="l2">
                            <img :src=item.pic alt="">
                            <div>{{ item.ctime }}</div>
                        </div>
                    </div>
                    <div class="line1-2"></div>
                    <div class="round">
                        <div></div>
                    </div>
                    <div class="line"></div>
                </div>
                <!-- <div class="right">
                    <div class="line2"></div>
                    <div class="round2">
                        <div></div>
                    </div>
                    <div class="kuang2">
                        <div class="r2">
                            <img :src=item.pic alt="">
                            <div>{{ item.ctime }}</div>
                        </div>
                        <div class="r1">
                            <span>{{ item.title }}</span>
                            <img src="@/assets/pp/right_bg2.jpg" alt="">
                        </div>
                    </div>
                    <div class="line2-2"></div>
                </div> -->
            </div>
            <div class="linelast"></div>
            <div class="timeBottom">
                <div class="jiantou"></div>
                <span>1773</span>
            </div>
            <div style="height:70px"></div>
        </div>
    </div>
</template>

<script>
import httpApi from '@/http'
export default {
    data() {
        return {
            ls: []
        }
    },
    methods: {
        upload() {
            httpApi.brandApi.queryAllBrand().then(res => {
                // console.log('全部历史', res);
                this.ls = res.data.data

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

    .ls {
        position: relative;

        .timeTop {
            width: 50px;
            height: 50px;
            background-color: #f62233;
            border-radius: 50%;
            text-align: center;
            color: white;
            transform: translateX(-50%);
            margin: 50px 0 76px 600px;



            .jiantou {
                border: 10px solid transparent;
                width: 0;
                border-bottom-color: white;
                margin: 0 auto;
            }
        }

        .linelast {
            width: 3px;
            height: 150px;
            background-color: #ceaf59;
            margin-left: 50%;
            margin-top: -74px;
        }

        .timeBottom {
            width: 50px;
            height: 50px;
            background-color: #f62233;
            border-radius: 50%;
            text-align: center;
            color: white;
            transform: translateX(-50%);
            margin: 50px 0 0 600px;
            position: absolute;
            bottom: 20px;



            .jiantou {
                border: 10px solid transparent;
                width: 0;
                border-top-color: white;
                position: absolute;
                left: 15px;
                top: 10px;
            }

            >span {
                display: inline-block;
                margin-top: 20px;
            }
        }

        .total {

            .left {
                height: 200px;
                display: flex;
                flex-direction: row;
                position: relative;

                .line {
                    width: 3px;
                    height: 176px;
                    background-color: #ceaf59;
                    transform: translateX(-50%);
                    display: inline-block;
                    position: absolute;
                    left: 600px;
                    margin-top: -76px;
                }

                .round {
                    width: 20px;
                    height: 20px;
                    border: 3px solid #ceaf59;
                    border-radius: 50%;
                    background-color: white;
                    margin-top: 100px;
                    transform: translateX(-50%);
                    display: inline-block;
                    position: absolute;
                    left: 600px;


                    >div {
                        width: 10px;
                        height: 10px;
                        background-color: red;
                        border-radius: 50%;
                        display: inline-block;
                        margin: 5px;
                    }
                }

                .line1-2 {
                    width: 30px;
                    height: 3px;
                    background-color: #ceaf59;
                    display: inline-block;
                    position: absolute;
                    left: 560px;
                    top: 110px;
                }

                .kuang {
                    // display: block;
                    width: 500px;
                    height: 200px;
                    background-color: #FFFFFF;
                    position: absolute;
                    left: 60px;
                    display: flex;

                    .l1 {
                        width: 300px;
                        padding: 30px 20px 0 0;
                        position: relative;

                        >span {
                            display: block;
                            color: #48463b;
                            font-size: 19px;
                            margin-left: 20px;
                        }

                        >img {
                            width: 100%;
                            position: absolute;
                            bottom: 10px;
                        }
                    }

                    .l2 {
                        width: 200px;
                        height: 200px;
                        position: relative;

                        >img {
                            width: 100%;
                            height: 100%;
                            display: block;
                        }

                        >div {
                            border: 2px solid black;
                            background-color: rgba(0, 0, 0, 0.25);
                            position: absolute;
                            left: 0;
                            right: 0;
                            top: 0;
                            bottom: 0;
                            text-align: center;
                            line-height: 200px;
                            font-size: 50px;
                            color: #FFFFFF;
                        }
                    }
                }
            }

            &:nth-child(2n+1) {
                display: flex;
                position: relative;

                .kuang {
                    display: flex;
                    flex-direction: row-reverse;
                    position: absolute;
                    left: 640px;

                }

                .line1-2 {
                    position: absolute;
                    left: 610px;
                }

            }

            // .right {
            //     height: 200px;
            //     display: flex;
            //     flex-direction: row;
            //     position: relative;

            //     .line2 {
            //         width: 3px;
            //         height: 176px;
            //         background-color: #ceaf59;
            //         transform: translateX(-50%);
            //         display: inline-block;
            //         position: absolute;
            //         left: 600px;
            //         margin-top: -76px;
            //     }

            //     .round2 {
            //         width: 20px;
            //         height: 20px;
            //         border: 3px solid #ceaf59;
            //         border-radius: 50%;
            //         background-color: white;
            //         margin-top: 100px;
            //         transform: translateX(-50%);
            //         display: inline-block;
            //         position: absolute;
            //         left: 600px;


            //         >div {
            //             width: 10px;
            //             height: 10px;
            //             background-color: red;
            //             border-radius: 50%;
            //             display: inline-block;
            //             margin: 5px;
            //         }
            //     }

            //     .line2-2 {
            //         width: 30px;
            //         height: 3px;
            //         background-color: #ceaf59;
            //         display: inline-block;
            //         position: absolute;
            //         left: 612px;
            //         top: 110px;
            //     }

            //     .kuang2 {
            //         display: block;
            //         width: 500px;
            //         height: 200px;
            //         background-color: #FFFFFF;
            //         position: absolute;
            //         left: 642px;
            //         display: flex;

            //         .r1 {
            //             width: 300px;
            //             padding: 30px 0 0 20px;
            //             position: relative;

            //             >span {
            //                 display: block;
            //                 color: #48463b;
            //                 font-size: 19px;
            //                 margin-left: 20px;
            //             }

            //             >img {
            //                 width: 92%;
            //                 position: absolute;
            //                 bottom: 10px;
            //             }
            //         }

            //         .r2 {
            //             width: 200px;
            //             height: 200px;
            //             position: relative;

            //             >img {
            //                 width: 100%;
            //                 height: 100%;
            //                 display: block;
            //             }

            //             >div {
            //                 border: 2px solid black;
            //                 background-color: rgba(0, 0, 0, 0.25);
            //                 position: absolute;
            //                 left: 0;
            //                 right: 0;
            //                 top: 0;
            //                 bottom: 0;
            //                 text-align: center;
            //                 line-height: 200px;
            //                 font-size: 50px;
            //                 color: #FFFFFF;
            //             }
            //         }
            //     }
            // }
        }
    }
}
</style>