<template>
    <div class="nav">
        <div class="nav-left">
            <img src="../assets/1.png" alt="">
        </div>
        <div class="nav-center">
            <ul>
                <li>
                    <img src="../assets/7.png" alt="">
                    <span>我们</span>
                    <div class="nav-center-yc">
                        <ul>
                            <li class="one">企业介绍</li>
                            <li>服务理念</li>
                            <li>国际站略</li>
                            <li>分支机购</li>
                            <li>食品安全</li>
                            <li>社会责任</li>
                        </ul>
                    </div>
                </li>
                <li>
                    <img src="../assets/6.png" alt="">
                    <span>新闻</span>
                    <div class="nav-center-yc">
                        <ul>
                            <li class="one">集团新闻</li>
                            <li>地方动态</li>
                            <li>媒体报道</li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="dxc">
                        <img src="../assets/2.png" alt="">
                    </div>
                </li>
                <li>
                    <img src="../assets/4.png" alt="">
                    <span>品牌</span>
                    <div class="nav-center-yc">
                        <ul>
                            <li class="one">品牌历史</li>
                            <li>品牌荣誉</li>
                            <li>传承人</li>
                            <li>文化活动</li>
                        </ul>
                    </div>
                </li>
                <li>
                    <img src="../assets/3.png" alt="">
                    <span>产品</span>
                    <div class="nav-center-yc">
                        <ul>
                            <li class="one">糕点系列</li>
                            <li>休闲食品</li>
                            <li>节日食品</li>
                            <li>面包主食</li>
                            <li>坚果系列</li>
                            <li>速冻食品</li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        <div class="nav-right">
            <div>
                <input name="" id="">
                <img src="../assets/8.png" alt="">
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
    height: 90px;
    border-top: 4px solid #ceaf59;
    display: flex;
    align-items: center;
    box-shadow: 2px 2px 10px #333333;

    .nav-left {
        width: 20%;
        height: 100%;
        background: #FCF9F0;

        img {
            margin-left: 40px;
            display: block;
            padding-top: 20px;
        }
    }

    .nav-center {
        background: #FCF9F0;
        width: 60%;
        height: 100%;

        >ul {
            height: 100%;
            display: flex;

            >li {
                text-align: center;
                width: 20%;
                height: 100%;
                align-items: center;
                border-left: 1px solid #CEAF59;


                img {
                    padding-top: 10px;
                    display: inline-block;
                }

                span {
                    display: block;
                    font-size: 14px;
                    color: #664f10;
                    padding-bottom: 15px;
                }

                .dxc {
                    width: 100%;
                    height: 100%;
                    background: #e60012;
                    overflow: hidden;

                    >img {
                        width: 80%;
                        padding: 0;
                    }
                }

                >.nav-center-yc {
                    display: none;

                    >ul {
                        background: rgba(230, 223, 201, 0.9);
                        border-top: 2px solid #e60012;
                        transition: all 1s;

                        >.one {
                            background: rgba(206, 175, 89, 0.9);
                            color: #fff;
                        }

                        >li {
                            border-bottom: 1px solid #dac791;
                            transition: all 0.4s;
                            height: 40px;
                            line-height: 40px;
                            font-size: 14px;
                            color: #666;
                            transition: all 0.4s;
                        }

                        >li:hover {
                            background: rgba(206, 175, 89, 0.9);
                            color: #fff;
                        }
                    }
                }
            }

            >li:hover .nav-center-yc {
                display: block;
            }
        }

    }

    .nav-right {
        background: #FCF9F0;
        display: flex;
        width: 20%;
        height: 100%;
        border-left: 1px solid #CEAF59;
        justify-content: center;

        >div {
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;

            >input {
                width: 100px;
                height: 28px;
            }

            >img {
                margin-left: -20px;
            }
        }

    }

}</style>