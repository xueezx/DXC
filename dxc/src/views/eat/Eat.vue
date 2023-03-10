<template>
  <div class="products">
    <div class="bng"></div>
    <div class="main">
      <div class="mianbaoxie">
        <!-- 面包屑导航 -->
        <el-breadcrumb class="bc" separator-class="el-icon-arrow-right">
          <p>您现在的位置:</p>
          <el-breadcrumb-item v-for="item in $route.meta.thumb" :key="item">{{
            item
          }}</el-breadcrumb-item>
        </el-breadcrumb>
      </div>
      <!-- 糕点 -->
      <div class="gaodian">
        <div class="tupian">
          <img class="gd1" src="../../assets/gdxl.jpg" alt="" />
          <span @click="$router.push('/home/pastry')">了解更多</span>
        </div>
        <div class="gd2">
          <div class="gd2-2" v-for="(item,i) in pastrys" :key="item.id">
            <div style="height: 380px;" class="pic">
              <img style="height: 100%;" :src="pic[i]" alt="" />
            </div>
            <div class="txt">
              <h1>
                <a href="#">{{ item.title }}</a>
              </h1>
              <span>{{ item.detail }}</span>
              <a href="eat-detail" class="d1">请进</a>
            </div>
            <div class="logo">
              <img src="../../assets/logo.jpg" alt="" />
            </div>
          </div>
        </div>
      </div>
      <div class="xxshipin">
        <div class="tupian">
          <img class="xx1" src="../../assets/1056453111ce0f3d3-8.jpg" alt="" />
          <span @click="$router.push('/home/snack')">了解更多</span>
        </div>
        <div class="xx2">
          <div class="xx2-1" v-for="(item,j) in snacks" :key="item.id">
            <div class="qjin">
              <a href="#">请进</a>
            </div>
            <div class="xxtu">
              <img class="sp" style="height: 100%;" :src="pic1[j]" alt="" />
              <img class="logo" src="../../assets/logo.jpg" alt="" />
            </div>
            <div class="xxzi">
              <h2>{{ item.title }}</h2>
              <p>
                {{ item.detail }}
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="jrshipin">
        <div class="tupian">
          <img class="gd1" src="../../assets/1056561199b8940eb-b.jpg" alt="" />
          <span @click="$router.push('/home/festive')">了解更多</span>
        </div>
        <div class="jr">
          <div class="jr1" v-for="(item,l) in festives" :key="item.id">
            <div class="tt1">
              <img style="height: 585px;" :src="pic2[l]" alt="" />
            </div>
            <div class="text">
              <h1>{{item.title}}</h1>
              <p>{{item.texture}}</p>
              <a class="go" href="#">请进</a>
            </div>
          </div>
        </div>
      </div>
      <div class="mianbao">
        <div class="tupian">
          <img class="gd1" src="../../assets/gdxl.jpg" alt="" />
          <span @click="$router.push('/home/bread')">了解更多</span>
        </div>
        <div class="gd2">
          <div class="gd2-2" v-for="(item,i) in breads" :key="item.id">
            <div style="height: 380px;" class="pic">
              <img style="height: 100%;" :src="pic3[i]" alt="" />
            </div>
            <div class="txt">
              <h1>
                <a href="#">{{ item.title }}</a>
              </h1>
              <span>{{ item.detail }}</span>
              <a href="eat-detail" class="d1">请进</a>
            </div>
            <div class="logo">
              <img src="../../assets/logo.jpg" alt="" />
            </div>
          </div>
        </div>
      </div>
      <div class="jianguo">
        <div class="tupian">
          <img class="xx1" src="../../assets/1056453111ce0f3d3-8.jpg" alt="" />
          <span @click="$router.push('/home/nut')">了解更多</span>
        </div>
        <div class="xx2">
          <div class="xx2-1" v-for="(item,i) in nuts" :key="item.id">
            <div class="qjin">
              <a href="#">请进</a>
            </div>
            <div class="xxtu">
              <img class="sp" style="height: 100%;" :src="pic4[i]" alt="" />
              <img class="logo" src="../../assets/logo.jpg" alt="" />
            </div>
            <div class="xxzi">
              <h2>{{ item.title }}</h2>
              <p>
                {{ item.detail }}
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="sudong">
        <div class="tupian">
          <img class="gd1" src="../../assets/1056561199b8940eb-b.jpg" alt="" />
          <span @click="$router.push('/home/frozen')">了解更多</span>
        </div>
        <div class="jr">
          <div class="jr1" v-for="(item,i) in frozens" :key="item.id">
            <div class="tt1">
              <img style="height: 585px;" :src="pic5[i]" alt="" />
            </div>
            <div class="text">
              <h1>{{item.title}}</h1>
              <p>{{item.texture}}</p>
              <a class="go" href="#">请进</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import httpApi from "@/http";
export default {
  data() {
    return {
      pstrysData: {
        page: 1,
        pagesize: 3,
      },
      pastrys: [],  //糕点
      breads: [],//面包图片
      festives: [],//节日食品图片
      frozens: [],//速冻图片
      nuts: [],//坚果图片
      snacks: [],//休闲食品图片
      pic:[],  //糕点图片
      pic1:[],//休闲食品图片
      pic2:[],//节日食品图片
      pic3:[],//面包图片
      pic4:[],//坚果图片
      pic5:[],//速冻图片
    };
  },
  methods: {
    queryAllPastry() {
      let params = {
        cplx_id: 1,
        page: this.pstrysData.page,
        pagesize: this.pstrysData.pagesize,
      };
      //糕点
      httpApi.eatApi.queryFoodsByPage(params).then((res) => {
        console.log(res);
        this.pastrys = res.data.data
        console.log('糕点数据',this.pastrys )
        let pic = this.pastrys
        for(let i=0;i<=pic.length;i++ ){
          this.pic.push((pic[i].pic).split('@',[1]))
          console.log(this.pic+':图片')
        }
      });
    },
    queryAllSnack() {
      let params = {
        cplx_id: 3,
        page: 1,
        pagesize: 4,
      };
      httpApi.eatApi.queryFoodsByPage(params).then((res) => {
        console.log(res);
        this.snacks = res.data.data
        console.log('休闲食品',this.snacks )
        let pic1 = this.snacks
        for(let j=0;j<=pic1.length;j++ ){
          this.pic1.push((pic1[j].pic).split('@',[1]))
          console.log(this.pic1+':图片')
        }
      });
    },
    queryAllFestive() {
      let params = {
        cplx_id: 8,
        page: 1,
        pagesize: 2,
      };
      httpApi.eatApi.queryFoodsByPage(params).then((res) => {
        console.log(res);
        this.festives = res.data.data
        console.log('节日数据',this.festives )
        let pic2 = this.festives
        for(let l=0;l<=pic2.length;l++ ){
          this.pic2.push((pic2[l].pic).split('@',[1]))
          console.log(this.pic2+':图片')
        }
      });
    },
    queryAllBread() {
      let params = {
        cplx_id: 11,
        page: this.pstrysData.page,
        pagesize: this.pstrysData.pagesize,
      };
      //糕点
      httpApi.eatApi.queryFoodsByPage(params).then((res) => {
        console.log(res);
        this.breads = res.data.data
        console.log('糕点数据',this.breads )
        let pic3 = this.breads
        for(let i=0;i<=pic3.length;i++ ){
          this.pic3.push((pic3[i].pic).split('@',[1]))
          console.log(this.pic3+':图片')
        }
      });
    },
    queryAllNut() {
      let params = {
        cplx_id: 13,
        page: 1,
        pagesize: 4,
      };
      //糕点
      httpApi.eatApi.queryFoodsByPage(params).then((res) => {
        console.log(res);
        this.nuts = res.data.data
        console.log('糕点数据',this.nuts )
        let pic4 = this.nuts
        for(let i=0;i<=pic4.length;i++ ){
          this.pic4.push((pic4[i].pic).split('@',[1]))
          console.log(this.pic4+':图片')
        }
      });
    },
    queryAllFrozen() {
      let params = {
        cplx_id: 16,
        page: 1,
        pagesize: 2,
      };
      //糕点
      httpApi.eatApi.queryFoodsByPage(params).then((res) => {
        console.log(res);
        this.frozens = res.data.data
        console.log('糕点数据',this.frozens )
        let pic5 = this.frozens
        for(let i=0;i<=pic5.length;i++ ){
          this.pic5.push((pic5[i].pic).split('@',[1]))
          console.log(this.pic5+':图片')
        }
      });
    },
  },
  mounted() {
    this.queryAllPastry();
    this.queryAllSnack();
    this.queryAllFestive();
    this.queryAllBread();
    this.queryAllNut();
    this.queryAllFrozen();
  },
};
</script>

<style lang="scss" scoped>
.products {
  margin: 0;
  padding: 0;
  width: 100%;
  background: #fcfaf4;
}

.bng {
  width: 100%;
  height: 600px;
  background: url(../../assets/13462731044753d79-6.jpg) no-repeat center top;
  background-size: cover;
}

.main {
  width: 1200px;
  margin: 0 auto;
}

.bc {
  display: flex;
  align-items: flex-end;
  margin: 30px 0px;
}

.tupian {
  width: 100%;
  height: 147px;
  background: url(../../assets/bg1.png);

  span {
    float: right;
    color: #ceaf59;
    font-size: 14px;
    margin-top: -34px;
    cursor: pointer;
  }

  img {
    display: block;
    margin: 0 auto;
    padding-top: 62px;
  }
}

.gd2 {
  width: 100%;
  justify-content: space-between;
  display: flex;
}

.gd2-2 {
  width: 354px;
  position: relative;
  overflow: hidden;
  border-radius: 10px;
  img{
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
}

.pic {
  img {
    width: 100%;
  }
}

.txt {
  position: absolute;
  background: rgba(0, 0, 0, 0.4);
  padding-left: 20px;
  color: #fff;
  width: 354px;
  height: 158px;
  bottom: 0px;
}

.txt h1 {
  font-size: 24px;

  a {
    color: #fff;
  }
}

.txt span {
  font-size: 12px;
  line-height: 20px;
  display: block;
  padding: 0 20px 0 0;
}

.d1 {
  display: block;
  width: 44px;
  background-color: #bfa764;
  border-radius: 50%;
  text-align: center;
  align-items: center;
  line-height: 44px;
  font-size: 18px;
  float: right;
  margin: 20px 40px 20px 0;
  border: 1px none;
  color: #fff;
}

.d1:hover {
  background-color: red;
}

.logo {
  position: absolute;
  top: 0;
  left: 0;
}

.xx2 {
  width: 100%;
  display: block;
  display: flex;
}

.xx2-1 {
  width: 300px;
  height: 520px;
  display: block;
  position: relative;
}
.qjin {
  width: 42px;
  line-height: 42px;
  text-align: center;
  align-items: center;
  background: #bfa764;
  position: absolute;
  margin-left: 129px;
  top: 239px;
  border-radius: 50%;
  > a {
    color: #fff;
  }
}
.qjin:hover {
  background: red;
}

.xxtu {
  width: 100%;
  height: 260px;

  .sp {
  object-fit: cover;
    width: 100%;
  }
}

.xxzi {
  width: 300px;
  height: 260px;
  background-color: #f9f4e4;
  display: block;

  h2 {
    text-align: center;
    font-size: 24px;
    color: #bfa764;
    width: 80%;
    margin: 0 auto;
    border-bottom: 1px solid #b59846;
    padding-top: 65px;
    padding-bottom: 15px;
  }

  p {
    color: #b59846;
    font-size: 12px;
    display: block;
    width: 80%;
    margin: 15px auto 0;
    line-height: 18px;
  }
}
.jrshipin {
  width: 100%;
}
.jr {
  width: 100%;
  display: flex;
  justify-content: space-between;
  .jr1 {
    width: 585px;
    height: 585px;
    position: relative;
    .tt1 {
      width: 100%;
      img {
        width: 100%;
        object-fit: cover;
      }
    }
    .text {
      width: 292px;
      height: 240px;
      color: #b59846;
      background: #fff;
      position: absolute;
      right: 0;
      bottom: 0;
      h1 {
        text-align: center;
        font-size: 30px;
        padding-top: 15px;
        margin-bottom: 15px;
      }
      p {
        font-size: 14px;
        padding: 0 30px;
      }
      .go {
        width: 44px;
        line-height: 44px;
        background: #bfa764;
        color: #fff;
        text-align: center;
        border-radius: 50%;
        position: absolute;
        align-items: center;
        right: 135px;
        bottom: 90px;
      }
    }
  }
}
</style>