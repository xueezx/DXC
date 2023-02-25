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
            <!-- 品牌历史 -->
            <div class="contain-one">
                <div class="top">
                    <img src="@/assets/pp/105552272b981aaec-1.jpg" alt="">
                </div>

                <div class="last">
                    <ul>
                        <li v-for="item in 3">
                            <p>
                                2022中国品牌价值评价信息发布，稻香村集团品牌价值182.77亿元。
                            </p>
                            <img src="@/assets/pp/95025642e1f1123b-a_cut194194.jpg" alt="">
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 集团荣誉 -->
            <div class="contain-two">
                <div class="top">
                    <img src="@/assets/pp/10564648370efb8b-0.jpg" alt="">
                </div>
                <!-- 轮播图 -->
                <div class="lbt">
                    <el-carousel :interval="4000" type="card">
                        <el-carousel-item v-for="item in 6" :key="item">
                            <div class="lbta">
                                <img class="lbtb" src="@/assets/pp/143574026776ab42-6_cen315315.jpg" alt="">
                            </div>
                        </el-carousel-item>
                    </el-carousel>
                </div>
            </div>
            <!-- 传承人 -->
            <div class="contain-three">
                <div class="top">
                    <img src="@/assets/pp/105615656bbf205cb-2.jpg" alt="">
                </div>
                <div class="last">
                    <ul>
                        <li v-for="item in 4">
                            <img src="@/assets/pp/11349417e5717d55-a_cut500317.jpg" alt="">
                            <span>第二三代传承人</span>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 文化活动 -->
            <div class="contain-last">
                <div class="top">
                    <img src="@/assets/pp/1056247552cdce121-d.jpg" alt="">
                </div>
                <div class="last">
                    <ul>
                        <li v-for="item in 4">
                            <img src="@/assets/pp/18017489c300967f-c_cut500413.jpg" alt="">
                            <div class="wz">
                                <h4>携手共进，激扬青春”稻香村集团大学生储备人员素质...</h4>
                                <p class="p1">jul 25,2017</p>
                                <p class="p2">
                                    2017年7月21日晚上6点，稻香村集团北京分公司人力资源部组织第一届大学生储备人员开展了“携手共进，激扬青春”素质拓展集训活动。活动共有26位大学生参加，参与...</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
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

    // 面包屑导航
    .bc {
        display: flex;
        align-items: flex-end;
        padding: 30px 0px;

        p {
            margin-right: 10px;
        }
    }

    // 品牌历史
    .contain-one {
        width: 100%;
        margin: 0;

        >.top {
            background: url(@/assets/xwhd-bg_03.jpg) no-repeat center;
            text-align: center;

            >img {
                margin-top: 42px;
            }
        }

        >.last {
            width: 100%;
            height: 767px;
            background: url(@/assets/pp/jcy-bg_07.jpg) no-repeat;

            ul {
                display: flex;
                margin: 0 150px;
                height: 700px;
                align-items: center;
                justify-content: space-between;

                li {
                    margin: 0 48px;
                    text-align: center;

                    p {
                        margin-bottom: 20px;
                        font-size: 14px;
                        color: #664f10;
                        line-height: 22px;
                    }
                }
            }

        }
    }

    // 集团荣誉
    .contain-two {
        width: 100%;
        margin: 0;

        >.top {
            background: url(@/assets/xwhd-bg_03.jpg) no-repeat center;
            text-align: center;

            >img {
                margin-top: 42px;
            }
        }

        .lbt {
            padding: 20px;

            .lbta {
                margin: 0 auto;
                border-radius: 50%;
                width: 300px;
                height: 300px;
                overflow: hidden;
            }
        }
    }

    // 传承人
    .contain-three {
        width: 100%;
        margin: 0;

        >.top {
            background: url(@/assets/xwhd-bg_03.jpg) no-repeat center;
            text-align: center;

            >img {
                margin-top: 42px;
            }
        }

        .last {
            width: 100%;

            ul {
                width: 100%;
                display: flex;
                justify-content: space-between;

                li {
                    width: 300px;
                    margin-right: 10px;
                    text-align: center;
                    padding: 10px;

                    &:last-child {
                        margin-right: 0;
                    }

                    img {
                        width: 100%;
                    }

                    span {
                        font-size: 16px;
                        color: #b78439;
                        line-height: 56px;
                    }
                }

            }
        }
    }

    // 文化活动
    .contain-last {
        width: 100%;
        margin: 0;

        >.top {
            background: url(@/assets/xwhd-bg_03.jpg) no-repeat center;
            text-align: center;

            >img {
                margin-top: 42px;
            }
        }

        .last {
            width: 100%;

            ul {
                width: 100%;
                display: flex;
                justify-content: space-between;

                li {
                    width: 300px;
                    margin-right: 10px;
                    padding: 10px;

                    &:last-child {
                        margin-right: 0;
                    }

                    img {
                        width: 100%;
                    }

                    .wz {
                        padding: 10px;
                        height: 200px;

                        h3 {
                            color: #b78439;
                            font-weight: 300;
                        }

                        .p1 {
                            font-size: 12px;
                            color: #968051;
                            margin: 5px 0 2px 0;
                        }

                        .p2 {
                            color: #666;
                            height: 74px;
                            overflow: hidden;
                            font-size: 12px;
                            line-height: 18px;
                        }
                    }


                }

            }
        }
    }
}
</style>