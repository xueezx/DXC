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
      <div class="gaodian">
        <div class="tupian">
          <img class="gd1" src="../../assets/gdxl.jpg" alt="" />
          <span @click="$router.push('/home/pastry')">了解更多</span>
        </div>
        <div class="gd2">
          <div class="gd2-2" v-for="item in pastrys" :key="item.id">
            <div class="pic">
              <img src="" alt="" />
            </div>
            <div class="txt">
              <h1>
                <a href="#">{{ item.title }}</a>
              </h1>
              <span>{{ item.detail }}</span>
              <a href="#" class="d1">请进</a>
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
          <div class="xx2-1">
            <div class="qjin">
              <a href="#">请进</a>
            </div>
            <div class="xxtu">
              <img
                class="sp"
                src="../../assets/1206536a45853d5-0_cut300260.jpg"
                alt=""
              />
              <img class="logo" src="../../assets/logo.jpg" alt="" />
            </div>
            <div class="xxzi">
              <h2>桃酥</h2>
              <p>
                优质小麦粉和新鲜鸡蛋完美比例配料，精心烤制，成就桃酥特色口感。
              </p>
            </div>
          </div>
          <div class="xx2-1">
            <div class="qjin">
              <a href="#">请进</a>
            </div>
            <div class="xxzi">
              <h2>桃酥</h2>
              <p>
                优质小麦粉和新鲜鸡蛋完美比例配料，精心烤制，成就桃酥特色口感。
              </p>
            </div>
            <div class="xxtu">
              <img
                class="sp"
                src="../../assets/13104325014bc9a0d-1_cut300260.jpg"
                alt=""
              />
              <img class="logo" src="../../assets/logo.jpg" alt="" />
            </div>
          </div>
          <div class="xx2-1">
            <div class="qjin">
              <a href="#">请进</a>
            </div>
            <div class="xxtu">
              <img
                class="sp"
                src="../../assets/139562825f993d13-6_cut300260.jpg"
                alt=""
              />
              <img class="logo" src="../../assets/logo.jpg" alt="" />
            </div>
            <div class="xxzi">
              <h2>桃酥</h2>
              <p>
                优质小麦粉和新鲜鸡蛋完美比例配料，精心烤制，成就桃酥特色口感。
              </p>
            </div>
          </div>
          <div class="xx2-1">
            <div class="qjin">
              <a href="#">请进</a>
            </div>
            <div class="xxzi">
              <h2>桃酥</h2>
              <p>
                优质小麦粉和新鲜鸡蛋完美比例配料，精心烤制，成就桃酥特色口感。
              </p>
            </div>
            <div class="xxtu">
              <img
                class="sp"
                src="../../assets/133956535abf3882d-2_cut300260.jpg"
                alt=""
              />
              <img class="logo" src="../../assets/logo.jpg" alt="" />
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
          <div class="jr1">
            <div class="tt1">
              <img src="../../assets/951519034a54ae96-b_cut585585.jpg" alt="" />
            </div>
            <div class="text">
              <h1>苏式月饼</h1>
              <p>非遗技艺，百年传承。</p>
              <a class="go" href="#">请进</a>
            </div>
          </div>
          <div class="jr1">
            <div class="tt1">
              <img src="../../assets/951519034a54ae96-b_cut585585.jpg" alt="" />
            </div>
            <div class="text">
              <h1>苏式月饼</h1>
              <p>非遗技艺，百年传承。</p>
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
          <div class="gd2-2">
            <div class="pic">
              <img src="../../assets/szgk.jpg" alt="" />
            </div>
            <div class="txt">
              <h1>
                <a href="/Content/2017/01-05/1534588855.html">山楂锅盔</a>
              </h1>
              <span
                >形似锅盔，馅皮酥松，内如金糕，色泽通透、酸甜可口，疏松软糯，轻轻咬上一...</span
              >
              <a href="#" class="d1">请进</a>
            </div>
            <div class="logo">
              <img src="../../assets/logo.jpg" alt="" />
            </div>
          </div>
          <div class="gd2-2">
            <div class="pic">
              <img src="../../assets/szgk.jpg" alt="" />
            </div>
            <div class="txt">
              <h1>
                <a href="/Content/2017/01-05/1534588855.html">山楂锅盔</a>
              </h1>
              <span
                >形似锅盔，馅皮酥松，内如金糕，色泽通透、酸甜可口，疏松软糯，轻轻咬上一...</span
              >
              <a href="#" class="d1">请进</a>
            </div>
            <div class="logo">
              <img src="../../assets/logo.jpg" alt="" />
            </div>
          </div>
          <div class="gd2-2">
            <div class="pic">
              <img src="../../assets/szgk.jpg" alt="" />
            </div>
            <div class="txt">
              <h1>
                <a href="/Content/2017/01-05/1534588855.html">山楂锅盔</a>
              </h1>
              <span
                >形似锅盔，馅皮酥松，内如金糕，色泽通透、酸甜可口，疏松软糯，轻轻咬上一...</span
              >
              <a href="#" class="d1">请进</a>
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
          <div class="xx2-1">
            <div class="qjin">
              <a href="#">请进</a>
            </div>
            <div class="xxtu">
              <img
                class="sp"
                src="../../assets/1206536a45853d5-0_cut300260.jpg"
                alt=""
              />
              <img class="logo" src="../../assets/logo.jpg" alt="" />
            </div>
            <div class="xxzi">
              <h2>桃酥</h2>
              <p>
                优质小麦粉和新鲜鸡蛋完美比例配料，精心烤制，成就桃酥特色口感。
              </p>
            </div>
          </div>
          <div class="xx2-1">
            <div class="qjin">
              <a href="#">请进</a>
            </div>
            <div class="xxzi">
              <h2>桃酥</h2>
              <p>
                优质小麦粉和新鲜鸡蛋完美比例配料，精心烤制，成就桃酥特色口感。
              </p>
            </div>
            <div class="xxtu">
              <img
                class="sp"
                src="../../assets/13104325014bc9a0d-1_cut300260.jpg"
                alt=""
              />
              <img class="logo" src="../../assets/logo.jpg" alt="" />
            </div>
          </div>
          <div class="xx2-1">
            <div class="qjin">
              <a href="#">请进</a>
            </div>
            <div class="xxtu">
              <img
                class="sp"
                src="../../assets/139562825f993d13-6_cut300260.jpg"
                alt=""
              />
              <img class="logo" src="../../assets/logo.jpg" alt="" />
            </div>
            <div class="xxzi">
              <h2>桃酥</h2>
              <p>
                优质小麦粉和新鲜鸡蛋完美比例配料，精心烤制，成就桃酥特色口感。
              </p>
            </div>
          </div>
          <div class="xx2-1">
            <div class="qjin">
              <a href="#">请进</a>
            </div>
            <div class="xxzi">
              <h2>桃酥</h2>
              <p>
                优质小麦粉和新鲜鸡蛋完美比例配料，精心烤制，成就桃酥特色口感。
              </p>
            </div>
            <div class="xxtu">
              <img
                class="sp"
                src="../../assets/133956535abf3882d-2_cut300260.jpg"
                alt=""
              />
              <img class="logo" src="../../assets/logo.jpg" alt="" />
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
          <div class="jr1">
            <div class="tt1">
              <img src="../../assets/951519034a54ae96-b_cut585585.jpg" alt="" />
            </div>
            <div class="text">
              <h1>苏式月饼</h1>
              <p>非遗技艺，百年传承。</p>
              <a class="go" href="#">请进</a>
            </div>
          </div>
          <div class="jr1">
            <div class="tt1">
              <img src="../../assets/951519034a54ae96-b_cut585585.jpg" alt="" />
            </div>
            <div class="text">
              <h1>苏式月饼</h1>
              <p>非遗技艺，百年传承。</p>
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
      pastrys: [],
      breads: [],
      festives: [],
      frozens: [],
      nuts: [],
      snacks: [],
      a: [],
      pic: {},
    };
  },
  methods: {
    queryAllPastry() {
      let params = {
        cplx_id: 1,
        page: this.pstrysData.page,
        pagesize: this.pstrysData.pagesize,
      };
      httpApi.eatApi.queryFoodsByPage(params).then((res) => {
        console.log(res);
        this.pastrys = res.data.data;
        let p = this.pastrys.pic
        console.log(p);
        //       for(var i =0;i<=p.length;i++){
        //         console.log(p[i].pic)
        //         this.a.push(p[i].pic)
        // console.log(this.a)
        //       }
        //       let p1=a.split('@',[0])
        //       // let p2=p1.charAt(0)
        //       console.log(p1+'图片');

        // let c = [];
        // p.forEach((item) => {
        //   let a = item.split('@');
        //   c.push(a);
        //   console.log(c);
        // });
      });
    },
  },
  mounted() {
    this.queryAllPastry();
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
}

.pic {
  img {
    width: 100%;
  }
}

.txt {
  position: absolute;
  background: rgba(0, 0, 0, 0.4);
  padding: 0 20px;
  color: #fff;
  width: 354px;
  height: 158px;
  bottom: 5px;
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