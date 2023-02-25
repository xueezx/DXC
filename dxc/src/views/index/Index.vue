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
                            <li v-for="item in 2">
                                <img src="@/assets/94859870ca2ed311-7_cut285270.jpg" alt="">
                                <span>稻香村集团荣获中国轻工业二百强、中国轻工...</span>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="last">
                    <ul>
                        <li v-for="item in 4">
                            <div>
                                <img src="@/assets/94412511bbf16845-c_cut285181.jpg" alt="">
                            </div>
                            <div>
                                <h3>苏州稻香村首家体验店在观前街开业 百年老...</h3>
                                <span class="time">Mar 31,2021</span>
                                <span class="jianjie">3月28日,苏州稻香村第一家体验店在苏州观前街正式开业。</span>
                                <a href="" class="btn">请进</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 稻香村产品 -->
            <div class="contain-three">
                <div class="top">
                    <img src="@/assets/11315482885846657-2.png" alt="">
                </div>
                <div class="last">
                    <ul>
                        <li v-for="item in 6">
                            <div>
                                <h2>糕点系列</h2>
                                <span>传统工艺，花式酥皮，皮馅分明，内馅以精选优质红枣为基料而制成，入口酥松细软，枣香...</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 营销中心 -->
            <div class="contain-four">
                <div class="top">
                    <img src="@/assets/11315482885846657-2.png" alt="">
                </div>
                <div class="last">
                    <div class="right">
                        <h3>诚邀加盟</h3>
                        <el-form :model="ruleForm" ref="ruleForm" label-width="100px" class="demo-ruleForm">
                            <el-form-item label="您的名字" prop="name">
                                <el-input v-model="ruleForm.name"></el-input>
                            </el-form-item>
                            <el-form-item label="您的Email" prop="Email">
                                <el-input v-model="ruleForm.Email"></el-input>
                            </el-form-item>
                            <el-form-item label="联系方式" prop="phone">
                                <el-input v-model="ruleForm.phone"></el-input>
                            </el-form-item>
                            <el-form-item label="您的留言" prop="desc">
                                <el-input type="textarea" v-model="ruleForm.desc"></el-input>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="primary">提交</el-button>
                            </el-form-item>
                        </el-form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            ruleForm: {
                name: '',
                Email: '',
                phone: '',
                desc: ''
            }
        }
    }
}
</script>

<style lang="scss" scoped>
div {
    background: #fcf9f0;

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

            >.middle {
                display: flex;
                width: 100%;
                height: 564px;

                >.left {
                    width: 895px;
                    margin-right: 20px;
                    cursor: pointer;

                    >img {
                        width: 100%;
                        height: 100%;
                    }
                }

                >.right {
                    width: 285px;

                    >ul {
                        >li {
                            position: relative;
                            height: 272px;
                            background-color: pink;
                            overflow: hidden;
                            cursor: pointer;

                            &:nth-child(1) {
                                margin-bottom: 20px;
                            }

                            >img {
                                width: 100%;
                                height: 100%;
                            }

                            >span {
                                position: absolute;
                                bottom: 0;
                                left: 0;
                                font-size: 14px;
                                color: #FFFFFF;
                                padding: 10px 20px 0;
                                height: 50px;
                                background: rgba(152, 102, 51, 0.6);
                                line-height: 20px;
                            }
                        }
                    }
                }
            }

            >.last {
                width: 100%;
                height: 460px;
                margin-top: 40px;

                >ul {
                    display: flex;

                    >li {
                        width: 285px;
                        margin-right: 20px;

                        &:last-child {
                            margin-right: 0;
                        }

                        >div:nth-child(1) {
                            width: 100%;
                            height: 180px;

                            >img {
                                width: 100%;
                                height: 100%;
                            }
                        }

                        >div:last-child {
                            width: auto;
                            height: 250px;
                            display: flex;
                            flex-direction: column;
                            padding: 30px 30px 0;
                            background: #f9f4e4;

                            >h3 {
                                margin-bottom: 25px;
                                line-height: 24px;
                                height: 50px;
                                font-size: 18px;
                                color: #b78439;
                                font-weight: 300;
                            }

                            >.time {
                                color: #968051;
                                margin-top: 5px;
                                line-height: 22px;
                            }

                            >.jianjie {
                                color: #333333;
                                line-height: 18px;
                                margin-bottom: 22px;
                            }

                            >.btn {
                                width: 42px;
                                height: 42px;
                                display: block;
                                border: 1px none;
                                border-radius: 50%;
                                background: #bfa764;
                                margin: 0 auto;
                                cursor: pointer;
                                font-size: 12px;
                                color: #FFFFFF;
                                line-height: 42px;
                                text-align: center;

                                &:hover {
                                    background-color: red;
                                }
                            }
                        }
                    }
                }
            }
        }

        // 稻香村产品
        >.contain-three {
            width: 100%;

            >.top {
                background: url(@/assets/xwhd-bg_03.jpg) no-repeat center;
                height: 225px;
                text-align: center;

                >img {
                    margin-top: 42px;
                }
            }

            >.last {
                width: 100%;
                height: 490px;

                >ul {
                    width: 100%;
                    height: 100%;
                    display: flex;
                    justify-content: space-between;

                    >li {
                        transition: 0.5s;
                        position: relative;
                        width: calc((100% - 5 * 10px)/6);
                        height: 100%;
                        background: url(@/assets/1054346188270ebe7-a_Cut435490.jpg);
                        overflow: hidden;

                        >div {
                            position: absolute;
                            left: 0;
                            bottom: 0;
                            background: rgba(0, 0, 0, 0.5);
                            overflow: hidden;
                            height: 115px;
                            padding: 10px 20px;
                            width: 100%;

                            >h2 {
                                color: #fff;
                                font-size: 24px;
                                font-weight: normal;
                                border-bottom: 1px solid #e4d4a9;
                                padding-bottom: 10px;
                                margin-bottom: 10px;
                            }

                            >span {
                                color: #e4d4a9;
                                line-height: 18px;
                                padding-right: 50px;
                                transition: all 0.3s;
                                display: none;
                            }
                        }

                        &:hover {
                            width: 434px;

                            >div {
                                width: 100%;

                                >span {

                                    display: block;
                                }
                            }
                        }
                    }
                }
            }
        }

        // 营销中心
        >.contain-four {
            width: 100%;

            >.top {
                background: url(@/assets/xwhd-bg_03.jpg) no-repeat center;
                height: 225px;
                text-align: center;

                >img {
                    margin-top: 42px;
                }
            }

            >.last {
                width: 100%;
                height: 500px;
                background: url(@/assets/0925_1.jpg) center no-repeat;

                >.right {
                    opacity: 0.8;
                    text-align: center;
                    float: right;
                    width: 370px;
                    margin-right: 10px;
                    margin-top: 80px;
                    h3{
                        margin-bottom: 20px;
                    }
                }
            }
        }
    }
}
</style>