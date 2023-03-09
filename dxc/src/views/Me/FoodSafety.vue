<template>
  <div>
    <div class="two">
      <img src="../../assets/me/spaq-wz.jpg" class="font" />
    </div>

    <p class="desc">稻香村现代化标准厂房大公开</p>

    <!-- 五块 -->
    <ul class="wukuai">
      <li>
        <div class="kuang"><p>12次</p></div>
        <p>从原料进厂到产品出厂经过12次严格的检验检查</p>
      </li>
      <li>
        <div class="kuang"><p>10万</p></div>
        <p>10万级无菌制药级空气净化、全空调GMP模范车间</p>
      </li>
      <li>
        <div class="kuang"><p>7+8</p></div>
        <p>生产员工岗位要经过7次检查、除尘消毒，要经过8道隔离门</p>
      </li>
      <li>
        <div class="kuang"><p>18+6</p></div>
        <p>车间设有18个摄像监控，6处IC卡自动门禁，实行中央监控</p>
      </li>
      <li>
        <div class="kuang"><img src="../../assets/me/spaq01.jpg" alt=""></div>
        <p>生产工序自检互检， 品控部产品专检，生产卫生检查组巡检</p>
      </li>
    </ul>

    <!-- 制作流程 -->
    <div class="step" v-for="item in steps" :key="item.id">
      <img :src="item.pic">
      <div class="text">
        <p class="id">{{item.id}}</p>
        <p class="name">{{item.title}}</p>
        <p class="cont">{{item.content}}</p>
      </div>
    </div>



  </div>
</template>

<script>
import httpApi from '../../http';
export default {
  data() {
    return {
      steps: []  //保存食品制作步骤
    }
  },
  methods: {
    querySteps() {
      httpApi.meApi.querySteps().then(res=>{
        console.log('加载食品制作步骤',res);
        this.steps=res.data.data
      })
    }
  },
  mounted(){
    this.querySteps()
  }
};
</script>

<style lang="scss" scoped>
// 大标题
.two {
  height: 173px;
  background-image: url("../../assets/me/bj1.jpg");
  background-size: contain;
  background-repeat: no-repeat;
  display: flex;
  .font {
    width: 200px;
    margin: auto;
  }
}


.desc {
  font-size: 18px;
  color: #ceaf59;
  text-align: center;
}


// 五块
.wukuai{
  display: flex;
  margin: 20px 0;
  li{
    width: 200px;
    margin-right: 50px;
    .kuang{
      width: 200px;
      height: 200px;
      background-image: url("../../assets/me/bk.jpg");
      background-size: contain;
      display: flex;
      margin-bottom: 10px;
      p{
        font-size: 50px;
        color: #ceaf59;
        margin: auto;
      }
      img{
        width: 150px;
        margin: auto;
      }
    }

    p{
      color: #664f10;
      padding: 10px;
    }
  }
}


//制作流程
.step{
  width: 70%;
  margin: 0 auto;
  display: flex;
  border-radius: 6px;
  overflow: hidden;
  &:nth-child(2n){
    flex-direction: row-reverse;
  }

  img{
    // width: 50%;
    flex: 1;
  }

  .text{
    // width: 50%;
    flex: 1;
    background-color: #f9f4e4;

    .id{
      font-size: 48px;
      color: #664f10;
      text-align: center;
    }
    .name{
      font-size: 18px;
      color: #664f10;
      margin: 40px 0;
      text-align: center;
    }
    .cont{
      font-size: 14px;
      color: #333;
      padding: 30px;
    }
  }
}


</style>