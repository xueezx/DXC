<template>
  <div class="home">
    <!-- 头部导航栏 -->
    <div class="nav">
        <div class="nav-left">
            <img src="../assets/1.png" alt="">
        </div>
        <div class="nav-center">
            <ul>               
                <li @click="$router.push('/home/me/introduction')">
                    <img src="../assets/7.png" alt="">
                    <span >我们</span>
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
                <li @click="$router.push('/home/index')">
                    <div class="dxc">
                        <img src="../assets/2.png" alt="">
                    </div>
                </li>
                <li @click="$router.push('/home/pp/ppls')">
                    <img src="../assets/4.png" alt="">
                    <span>品牌</span>
                    <div class="nav-center-yc">
                        <ul>
                            <li class="one" >品牌历史</li>
                            <li>品牌荣誉</li>
                            <li>传承人</li>
                            <li>文化活动</li>
                        </ul>
                    </div>
                </li>
                <li @click="$router.push('/home/eat')">
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

    <!-- 三级路由占位符 -->
    <router-view/>
    
    <!-- 页脚导航栏 -->
    <div class="nav-footnav">
        <ul>
            <li class="first">首页</li>
        </ul>
        <ul>
            <li class="first">企业介绍</li>
            <li>服务理念</li>
            <li>国际站略</li>
            <li>分支机购</li>
            <li>食品安全</li>
            <li>社会责任</li>
        </ul>
        <ul>
            <li class="first">新闻</li>
            <li>集团新闻</li>
            <li>地方动态</li>
            <li>媒体报道</li>
        </ul>
        <ul>
            <li class="first">品牌</li>
            <li>品牌历史</li>
            <li>品牌荣誉</li>
            <li>传承人</li>
            <li>文化活动</li>
        </ul>
        <ul>
            <li class="first">糕点系列</li>
            <li>休闲食品</li>
            <li>节日食品</li>
            <li>面包主食</li>
            <li>坚果系列</li>
            <li>速冻食品</li>
        </ul>
    </div>
    <!-- 脚本 -->
    <div class="nav-foot">
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
  </div>
</template>

<script>


</script>
<style scoped lang="scss">
.home{
  //头部导航栏
  .nav {
    position: fixed;
    z-index: 111;
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

}

  //页脚导航栏
>.nav-footnav {
    width: 100%;
    height: 280px;
    background: #fcf5e1;
    border-top: 2px solid #d9ae6e;

    >ul {
        float: left;
        width: 19%;
        text-align: center;
        border-right: 1px solid #e2dcca;
        min-height: 240px;
        padding-top: 40px;

        >.first {
            margin-bottom: 25px;
        }

        >li {
            font-size: 14px;
            color: #b78439;
            margin-bottom: 10px;
        }

        >li:hover {
            color: rgb(255, 103, 1);
        }
    }

    >ul:last-child {
        border-right: none;
    }
}
//脚本
>.nav-foot {
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
}

//基础样式
*{
  margin: 0;
  padding: 0;
}
img{
  display: block;
}
ul{
  list-style: none;
}
</style>