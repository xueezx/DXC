<template>
    <div>
        <!-- 视频 -->
        <div class="shipin">
            <video controls poster src="@/assets/video/shipin.mp4"></video>
        </div>
        <!-- 版心 -->
        <div class="contain">

            <div class="contain-one">
                <ul>
                    <li v-for="item in 4">
                        <img src="@/assets/top1.png" alt="">
                        <p>始于1773年【乾隆三十八年】</p>
                    </li>
                </ul>
            </div>
            <!-- 新闻与活动 -->
            <div class="contain-two">
                <div class="top">
                    <img src="@/assets/xinwen.jpg" alt="">
                </div>

                <div class="middle">
                    <div class="left">
                        <img src="@/assets/2_cut895560.jpg" alt="">
                    </div>
                    <div class="right">
                        <ul>
                            <li>
                                <img src="" alt="">
                                <span>稻香村集团荣获中国轻工业二百强、中国轻工...</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 稻香村产品 -->
            <div class="contain-three"></div>
            <!-- 营销中心 -->
            <div class="contain-four"></div>
        </div>
    </div>
</template>

<script>
export default {

}
</script>

<style lang="scss" scoped>
div {

    //视频
    >.shipin {
        width: 100%;

        >video {
            width: 100%;
        }
    }

    //版心
    .contain {

        width: 1200px;
        margin: auto;

        >.contain-one {
            margin-top: -13px;
            width: 100%;
            background: url(@/assets/center-one.jpg) bottom no-repeat;
            height: 650px;
            background-position: -50px 10px;

            >ul {
                width: 100%;
                display: flex;
                padding-top: 30px;

                >li {
                    text-align: center;
                    line-height: 40px;
                    width: 25%;
                    padding: 0 20px;
                }
            }
        }

        // 新闻与活动
        >.contain-two {
            width: 100%;
            margin: 0;

            >.top {
                background: url(@/assets/xwhd-bg_03.jpg) no-repeat center;
                height: 225px;
                text-align: center;

                >img {
                    margin-top: 42px;
                }
            }
            >.middle{
                display: flex;
                width: 895px;
                >.left{

                }
                >.right{
                    width: 285px;
                }
            }
        }
    }
}</style>