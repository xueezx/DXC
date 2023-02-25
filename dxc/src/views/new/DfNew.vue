<template>
    <div class="df">
        <!-- 面包屑导航 -->
        <div class="breadcrumb" style="min-width:320px">
            <span style="margin-left:20px;line-height:100%">您现在的位置：</span>
            <el-breadcrumb style="margin:0 0 0 20px;display:inline-block" separator-class="el-icon-arrow-right">
                <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
                <el-breadcrumb-item>新闻</el-breadcrumb-item>
                <el-breadcrumb-item><span style="color:red">地方动态</span></el-breadcrumb-item>
            </el-breadcrumb>
        </div>

        <div class="bt1">
            <img src="../../assets/dfnew.jpg" alt="">
        </div>

        <router-view />
        <div class="hos" v-show="hideOrShow">
            <div class="jump">
                <div class="left">
                    <h4>2022中国品牌价值评价信息发布 稻香村（苏州）品牌价值182.77亿元</h4>
                    <p>Sept 2022.09.06</p>
                    <span>9月5日，新华社、中国品牌建设促进会、中国资产评估协会在京共同主办</span>
                    <span>&nbsp;&nbsp;“2022中国品牌价值评价信息发布”线上活动，会上正式发布了2022年中国品牌价值评价结果。稻香村（苏州）不负众望，最终以904的高品牌强度和182.77亿元的品牌价值强势上榜。</span>
                    <div class="btn">请进</div>
                </div>
                <div class="right">
                    <img src="../../assets/1_new.jpg" alt="">
                </div>
            </div>
            <!-- 分页遍历 -->
            <div @click="detail(item.id)" class="jump2" v-for="item in news" :key="item.id">
                <div class="left2">
                    <img :src="item.avatar" alt="">
                </div>
                <div class="right2">
                    <h4>{{ item.title }}</h4>
                    <p>{{ item.time }}</p>
                    <span>{{ item.detail }}</span>
                    <div class="btn">请进</div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            hideOrShow: true,
            news: [
                {
                    id: 1,
                    avatar: 'http://www.daoxiangcun.cn/UpLoadFile/Images/2023/2/6/17237326c438096-a_Cut285180.jpg',
                    title: '稻香村荣登新国货品牌百强，获“最受消费者欢迎新国货品牌”大奖。',
                    time: 'Feb 06,2023',
                    detail: '近日，由全球知名的新经济产业第三方数据挖掘和分析机构iiMedia Research（艾媒咨询）主办的艾媒新消费大讲堂第6期暨2022年中国新国货品牌“金榜题名”颁奖典礼成功举办并揭晓获奖名单。稻香村荣获“2022年中国最受消费者欢迎新国货品牌”大奖，并入'
                },
                {
                    id: 2,
                    avatar: 'http://www.daoxiangcun.cn/UpLoadFile/Images/2022/9/28/1118457091350d3c9-7_Cut285180.jpg',
                    title: '稻香村荣登新国货品牌百强，获“最受消费者欢迎新国货品牌”大奖。',
                    time: 'Feb 07,2023',
                    detail: '近日，由全球知名的新经济产业第三方数据挖掘和分析机构iiMedia Research（艾媒咨询）主办的艾媒新消费大讲堂第6期暨2022年中国新国货品牌“金榜题名”颁奖典礼成功举办并揭晓获奖名单。稻香村荣获“2022年中国最受消费者欢迎新国货品牌”大奖，并入'
                },
                {
                    id: 3,
                    avatar: 'http://www.daoxiangcun.cn/UpLoadFile/Images/2023/2/6/17237326c438096-a_Cut285180.jpg',
                    title: '稻香村荣登新国货品牌百强，获“最受消费者欢迎新国货品牌”大奖。',
                    time: 'Feb 08,2023',
                    detail: '近日，由全球知名的新经济产业第三方数据挖掘和分析机构iiMedia Research（艾媒咨询）主办的艾媒新消费大讲堂第6期暨2022年中国新国货品牌“金榜题名”颁奖典礼成功举办并揭晓获奖名单。稻香村荣获“2022年中国最受消费者欢迎新国货品牌”大奖，并入'
                },
            ]
        }
    },
    methods: {
        detail(id) {
            this.$router.push('/home/new/dfnew/df/' + id)
            if (id) {
                this.hideOrShow = false
            } else {
                this.hideOrShow = true
            }
        }
    }
}
</script>

<style lang="scss" scoped>
.df {
    width: 100%;
    background-color: #FDFAF5;
}

.breadcrumb {
    width: 1200px;
    margin: auto;
    padding-top: 20px;
}

.bt1 {
    background-image: url('../../assets/bt1.jpg');
    background-size: 100% 100px;
    text-align: center;
}

.bt1>img {
    width: 120px;
    margin: 35px 0;
}

.jump {
    display: flex;
    width: 1200px;
    margin: 20px auto;

    .left {
        background-color: #F9F4E4;
        width: 550px;
        padding: 20px;

        >h4 {
            color: #C28F39;
            font-size: 16px;
            font-weight: lighter;

            &:hover {
                color: rgb(231, 77, 77);
            }
        }

        >span {
            display: inline-block;
        }

        >p {
            margin: 10px 0;
            color: #C28F39;
            font-size: 12px;
        }

        .btn {
            margin-top: 50px;
            font-size: 20px;
            color: white;
            text-align: center;
            line-height: 60px;
            background-color: #BFA764;
            width: 60px;
            height: 60px;
            border-radius: 100%;

            &:hover {
                color: rgb(231, 77, 77);
            }
        }
    }

    .right {
        width: 650px;
        overflow: hidden;

        >img {
            display: block;
            width: 100%;
            height: 350px;
        }
    }
}

.jump2 {
    display: flex;
    width: 1200px;
    margin: 20px auto;

    .right2 {
        background-color: #F9F4E4;
        width: 57%;
        padding: 20px;

        >h4 {
            color: #C28F39;
            font-size: 16px;
            font-weight: lighter;

            &:hover {
                color: rgb(231, 77, 77);
            }
        }

        >span {
            display: inline-block;
        }

        >p {
            margin: 10px 0;
            color: #C28F39;
            font-size: 12px;
        }

        .btn {
            margin: 20px 0 0 600px;
            font-size: 16px;
            color: white;
            text-align: center;
            line-height: 45px;
            background-color: #BFA764;
            width: 45px;
            height: 45px;
            border-radius: 100%;


            &:hover {
                color: rgb(231, 77, 77);
            }
        }
    }

    .left2 {
        width: 43%;
        overflow: hidden;

        >img {
            display: block;
            width: 100%;
            height: 250px;
        }
    }
}
</style>