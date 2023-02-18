<template>
    <div class="nav">
        <div class="nav-one">
            <img src="../assets/erweima.jpg" alt="">
        </div>
        <div class="nav-two">
            <p>Copyright 2012 - 2023 All rights reserved</p>
            <p>北京苏稻食品工业有限公司版权所有京ICP备13026984号-1</p>
        </div>
        <div class="nav-photo">
            <img src="../assets/5.jpg" alt="">
        </div>
        <div class="nav-last">
            <div class="sss">
                <div class="s1">
                    <img src="../assets/xinxi.jpg" alt="">
                    <p>bd@daoxiangcun.cn </p>
                </div>
                <div class="s2">
                    <img src="../assets/dianhua.png" alt="">
                    <p>400-600-1773</p>
                </div>
            </div>
            <div class="wz">
                <span>网站声明</span> |
                <span>招贤纳士</span> |
                <span>意见反馈</span> |
                <span>联系我们</span>
            </div>
        </div>
    </div>
</template>

<script>
export default {

}
</script>

<style lang="scss" scoped>
.nav {
    min-width: 1200px;
    width: 100%;
    background: #333333;
    height: 118px;
    overflow: hidden;

    >.nav-one {
        float: left;
        padding-left: 20px;
        padding-top: 20px;
        margin-right: 10px;

        >img {
            width: 70px;
        }
    }

    >.nav-two {
        float: left;
        font-size: 12px;
        color: #FFFFFF;
        line-height: 24px;
        // margin-right: 100px;
        padding-top: 30px;
    }

    >.nav-photo {
        position: relative;
        float: left;
        left: 20%;

        >img {
            width: 115px;
        }
    }

    >.nav-last {
        float: right;
        padding-right: 70px;

        >.sss {
            display: flex;
            padding: 25px 0;
            >.s1 {
                // width: 90px;
                display: flex;
                align-items: center;
                >img{
                    margin-right: 5px;
                }
            }

            >.s2 {
                display: flex;
                align-items: center;
                justify-content: space-between;
                >img {
                    width: 45px;
                }
            }
        }
        >.wz{
            span:hover{
                color:  rgb(255, 103, 1);
            }
        }

    }
}
</style>