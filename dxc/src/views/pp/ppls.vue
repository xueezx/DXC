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
            <div class="total">
                <div class="left">
                    <div class="line"></div>
                    <div class="round">
                        <div></div>
                    </div>
                    <div class="kuang"></div>
                    <div class="line1-2"></div>
                </div>
                <div class="right">
                    <div class="line2"></div>
                    <div class="round2">
                        <div></div>
                    </div>
                    <div class="kuang2"></div>
                    <div class="line2-2"></div>
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
        border: 1px solid black;

        .timeTop {
            width: 50px;
            height: 50px;
            background-color: #f62233;
            border-radius: 50%;
            text-align: center;
            color: white;
            transform: translateX(-50%);
            margin: 50px 0 0 600px;



            .jiantou {
                border: 10px solid transparent;
                width: 0;
                border-bottom-color: white;
                margin: 0 auto;
            }
        }

        .total {
            .left {

                .line {
                    width: 3px;
                    height: 100px;
                    background-color: #ceaf59;
                    margin-left: 50%;
                    transform: translateX(-50%);
                    display: inline-block;
                }

                .round {
                    width: 20px;
                    height: 20px;
                    border: 3px solid #ceaf59;
                    border-radius: 50%;
                    background-color: white;
                    margin-left: 50%;
                    transform: translateX(-50%);
                    display: inline-block;


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
                    margin: -15px 0 0 556px;
                    display: inline-block;
                }

                .kuang {
                    width: 500px;
                    height: 200px;
                    background-color: #FFFFFF;
                }
            }

            .right {}
        }
    }
}
</style>