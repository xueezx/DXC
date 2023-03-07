<template>
  <div>
    <!-- 大型现代化加工厂 -->
    <div class="two">
      <img src="../../assets/me/jgc.jpg" class="font">
    </div>

    <template>      
      <el-carousel :interval="2000" type="card" height="300px" class="banner">
        <el-carousel-item v-for="item in banners" :key="item.id" class="banner-item">
          <img :src="item.pic" alt="">
        </el-carousel-item>
      </el-carousel>
    </template>

    <!-- 分公司介绍 -->
    <div class="two2">
      <img src="../../assets/me/fgs.jpg" class="font2">
    </div>

    <ul class="fgs">
      <li v-for="item in branches" :key="item.id">
          <div>
            <p class="name">{{item.title}}</p>
            <p class="xx">地址:  {{item.address}}</p>
            <p class="xx">邮编:  {{item.postal_code}}</p>
            <p class="xx">电话:  {{item.phone}}</p>
            <p class="xx">传真:  {{item.fax}}</p>
            <p class="xx">网址:  {{item.website}}</p>
          </div>
      </li>
    </ul>



  </div>
</template>

<script>
import httpApi from '../../http'

  export default {
    data() {
      return {
        banners: [],  //保存轮播图
        branches:[]  //保存分支机构信息
      }
    },
    methods: {
      banner() {
        httpApi.meApi.queryAllPlant().then(res=>{
          console.log('加载轮播图',res);
          this.banners=res.data.data
        })
      },
      queryBranches(){
        httpApi.meApi.queryAllBranch().then(res=>{
          console.log('加载分支机构信息',res);
          this.branches=res.data.data
        })
      }
    },
    mounted(){
      this.banner()
      this.queryBranches()
    }
  }
</script>

<style lang="scss" scoped>
.two{
  height: 173px;
  background-image: url('../../assets/me/jgc-bj.jpg');
  background-size: contain; 
  background-repeat: no-repeat;
  display: flex;
  .font{
    width: 380px;
    margin: auto;
  }
}


.two2{
  height: 173px;
  background-image: url('../../assets/me/bj1.jpg');
  background-size: contain; 
  background-repeat: no-repeat;
  display: flex;
  .font2{
    width: 200px;
    margin: auto;
  }
}


//轮播图,走马灯
.banner{
  .banner-item{
    img{
      height: 300px;
      object-fit: cover;
    }
  }
}


//分公司
.fgs{
  display: flex;
  flex-wrap: wrap;
  padding-bottom: 80px;
  li{
    width: 400px;
    background-color: #fff;
    padding: 20px;
    border: 1px solid #c9b053;
    box-sizing: border-box;

    div{
      .name{
        font-size: 24px;
        color: #b78439;
        margin-bottom: 20px;
      }
      .xx{
        font-size: 16px;
        color: #333;
        margin-bottom: 10px;
      }
    }
  }
}


</style>