<template>
    <div class="nav">
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
</template>

<script>
export default {

}
</script>

<style lang="scss" scoped>
.nav {
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
</style>