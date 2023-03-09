<template>
    <div class="jt">
        <!-- 面包屑导航 -->
        <div class="breadcrumb" style="min-width:320px">
            <span style="margin-left:20px;line-height:100%" class="wz">您现在的位置：</span>
            <el-breadcrumb style="margin:0 0 0 20px;display:inline-block" separator-class="el-icon-arrow-right">
                <el-breadcrumb-item style="text-decoration: none;" :to="{ path: '/' }" class="wz">首页</el-breadcrumb-item>
                <el-breadcrumb-item class="wz">新闻</el-breadcrumb-item>
                <el-breadcrumb-item><span style="color:red" class="wz">集团新闻</span></el-breadcrumb-item>
            </el-breadcrumb>
        </div>

        <div class="bt1">
            <img src="../../assets/jtnew.jpg" alt="">
        </div>
        <router-view />
        <div class="hos" v-show="hideOrShow">
            <!-- 分页遍历 -->
            <!-- $router.push('/home/new/jtnew/jt/' + item.id) -->
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
        <!-- 分页器 -->
        <el-pagination style="margin:10px;" background :total="newsData.total" :page-size="newsData.pagesize"
            :current-page="newsData.page" layout="->, total, prev, pager, next, jumper"
            @current-change="changeCurrentPage"></el-pagination>
    </div>
</template>

<script>
import httpApi from '@/http'

export default {
    data() {
        return {
            hideOrShow: true,
            news: [
                // {
                //     id: 1,
                //     avatar: 'http://www.daoxiangcun.cn/UpLoadFile/Images/2023/2/6/17237326c438096-a_Cut285180.jpg',
                //     title: '稻香村荣登新国货品牌百强，获“最受消费者欢迎新国货品牌”大奖。',
                //     time: 'Feb 06,2023',
                //     detail: '近日，由全球知名的新经济产业第三方数据挖掘和分析机构iiMedia Research（艾媒咨询）主办的艾媒新消费大讲堂第6期暨2022年中国新国货品牌“金榜题名”颁奖典礼成功举办并揭晓获奖名单。稻香村荣获“2022年中国最受消费者欢迎新国货品牌”大奖，并入'
                // },
                // {
                //     id: 2,
                //     avatar: 'http://www.daoxiangcun.cn/UpLoadFile/Images/2022/9/28/1118457091350d3c9-7_Cut285180.jpg',
                //     title: '稻香村荣登新国货品牌百强，获“最受消费者欢迎新国货品牌”大奖。',
                //     time: 'Feb 07,2023',
                //     detail: '近日，由全球知名的新经济产业第三方数据挖掘和分析机构iiMedia Research（艾媒咨询）主办的艾媒新消费大讲堂第6期暨2022年中国新国货品牌“金榜题名”颁奖典礼成功举办并揭晓获奖名单。稻香村荣获“2022年中国最受消费者欢迎新国货品牌”大奖，并入'
                // },
                // {
                //     id: 3,
                //     avatar: 'http://www.daoxiangcun.cn/UpLoadFile/Images/2023/2/6/17237326c438096-a_Cut285180.jpg',
                //     title: '稻香村荣登新国货品牌百强，获“最受消费者欢迎新国货品牌”大奖。',
                //     time: 'Feb 08,2023',
                //     detail: '近日，由全球知名的新经济产业第三方数据挖掘和分析机构iiMedia Research（艾媒咨询）主办的艾媒新消费大讲堂第6期暨2022年中国新国货品牌“金榜题名”颁奖典礼成功举办并揭晓获奖名单。稻香村荣获“2022年中国最受消费者欢迎新国货品牌”大奖，并入'
                // },
            ],
            newsData: {
                // 保存电影数据
                page: 1, // 当前页码
                pagesize: 10, // 每页多少条
                total: 999, // 总条目数
                xwfl_id: 0,//新闻类型id
                result: [] // 电影列表
            }
        }
    },
    methods: {
        detail(id) {
            this.$router.push('/home/new/jtnew/jt/' + id)
            if (id) {
                this.hideOrShow = false
            }
        },
        changeCurrentPage(page) {
            this.newsData.page = page  // 修改当前页
            this.queryMovies() // 重新加载当前页的新闻列表
        },
        upload() {
            let params = {
                page: this.newsData.page,
                pagesize: this.newsData.pagesize,
                xwfl_id: this.$router.path
            }
            httpApi.newsApi.queryNewsByPage(params).then(res => {
                console.log('新闻列表', res);
            })
        }
    },
    mounted() {
        this.upload()
    }
}
</script>

<style lang="scss" scoped>
.jt {
    width: 100%;
    background-color: #FDFAF5;
}

.breadcrumb {
    width: 1200px;
    margin: auto;
    padding-top: 20px;
    .wz{
        font-weight: normal;
        font-size: 14px;
        color: #333;
    }
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

.hos {

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

    :first-child {
        flex-direction: row-reverse;

        .left2 {
            width: 650px;
            overflow: hidden;

            >img {
                display: block;
                width: 100%;
                height: 350px;
            }
        }

        .right2 {
            background-color: #F9F4E4;
            height: 290px;
            width: 550px;
            padding: 30px;

            >h4 {
                color: #C28F39;
                font-size: 20px;
                font-weight: lighter;

                &:hover {
                    color: rgb(231, 77, 77);
                }
            }

            >span {
                display: inline-block;
                font-size: 20px;
            }

            >p {
                margin: 10px 0;
                color: #C28F39;
                font-size: 16px;
            }

            .btn {
                font-size: 20px;
                color: white;
                text-align: center;
                line-height: 60px;
                background-color: #BFA764;
                width: 60px;
                height: 60px;
                border-radius: 100%;
                margin-left: 10px;

                &:hover {
                    color: rgb(231, 77, 77);
                }
            }
        }
    }
}
</style>