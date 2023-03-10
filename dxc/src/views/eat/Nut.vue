<template>
  <div class="py">
    <div class="banner"></div>

    <div class="dhl">
      <!-- 导航栏 -->
      <el-menu
        router
        class="el-menu-demo"
        mode="horizontal"
        :default-active="$route.path"
        @select="handleSelect"
        background-color="#e6dfc9"
        text-color="#333"
        active-text-color="#fff"
      >
        <el-menu-item index="/home/pastry">糕点系列</el-menu-item>
        <el-menu-item index="/home/snack">休闲食品</el-menu-item>
        <el-menu-item index="/home/festive">节日食品</el-menu-item>
        <el-menu-item index="/home/bread">面包主食</el-menu-item>
        <el-menu-item index="/home/nut">坚果系列</el-menu-item>
        <el-menu-item index="/home/frozen">速冻食品</el-menu-item>
      </el-menu>
    </div>

    <!-- main -->
    <div class="fu">
      <el-menu
        :default-active="activeIndex" 
        class="erzi" background-color="#fcf5e1" active-text-color="#d4b970">
        <el-menu-item index="1">坚果</el-menu-item>
      </el-menu>
    </div>
    <div class="contain">
      <div class="mbx">
        <!-- 面包屑导航 -->
        <el-breadcrumb class="bc" separator-class="el-icon-arrow-right">
          <p>您现在的位置:</p>
          <el-breadcrumb-item v-for="item in $route.meta.thumb" :key="item">{{
            item
          }}</el-breadcrumb-item>
        </el-breadcrumb>
      </div>
      <div class="tupian">
        <div class="bg">
          <img src="../../assets/11535404c5e8840e-9.jpg" alt="" />
        </div>
      </div>
      <div class="xzq">
        <el-select class="sel" v-model="value" placeholder="请选择" @change="queryCpxl(value)">
          <el-option
            v-for="item in types" :key="item.id" 
            :value="item.id" :label="item.title"
          >
          </el-option>
        </el-select>
        <el-select class="sel" v-model="value1" placeholder="请选择">
          <el-option
            v-for="item in cp"
            :key="item.value"
            :label="item.label"
            :value="item.title"
          >
          </el-option>
        </el-select>
        <el-input class="input" placeholder="请输入内容"> </el-input
        ><el-button class="btn1">筛选</el-button>
      </div>
      <div class="neirong">
        <div class="nei">
          <div class="gd2-2" v-for="(item,i) in pastrys" :key="item.id">
            <div class="pic">
              <img :src="pic[i]" alt="" />
            </div>
            <div class="txt">
              <h1>
                <a @click="$router.push(`/home/eat-detail/${item.id}`)">{{item.title}}</a>
              </h1>
              <span
                >{{item.detail}}</span
              >
              <a @click="$router.push(`/home/eat-detail/${item.id}`)" class="d1">请进</a>
            </div>
            <div class="logo">
              <img src="../../assets/logo.jpg" alt="" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import httpApi from '@/http';
export default {
  data() {
    return {
      activeIndex: '1',
      value: "",
      pastrys:[],
      pastrys1:[],
      pic:[],
      value1:[],
      types:[],
      cp:[]
    };
  },
  methods: {
    queryAllPastry() {
      this.pic=[]
      let params = {
        cplx_id: 13,
        page: 1,
        pagesize: 100,
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

    queryTypes(){
      httpApi.eatApi.queryFoodsClass().then(res=>{
        console.log(res);
        this.types=res.data.data
      })

    },

    queryCpxl(v){
      console.log(v);
      let params={cpfl_id:v}
      httpApi.eatApi.queryTypeByClass(params).then(res=>{
        console.log(res);
        this.cp=res.data.data
      })
    },
    search() {
      if (this.name.trim() == "") {
        this.listAll();
      } else {
        this.listByName();
      }
    },
    handleSelect(key, keyPath) {
      console.log(key, keyPath);
    },
  },
  mounted(){
    window.scrollTo(0, 0)
    this.queryTypes()  
    this.queryCpxl()
    this.queryAllPastry()
  }
};
</script>

<style lang="scss" scoped>
.py {
  margin: 0;
  padding: 0;
  width: 100%;
  background: #fcfaf4;
  display: block;
}
.banner {
  width: 100%;
  height: 600px;
  background: url(../../assets/13462731044753d79-6.jpg) no-repeat center top;
  background-size: cover;
}
.dhl {
  width: 100%;
  height: 52px;
  background: #e6dfc9;
}
.el-menu-demo {
  height: 52px;
  width: 1200px;
  margin: 0 auto;
  overflow: hidden;
}

.el-menu-item {
  font-size: 20px;
  line-height: 52px;
  align-items: center;
  width: 160px;
  text-align: center;
}
.el-menu-demo :hover {
  background: #ceaf59 !important;
  color: #ffffff !important;
}
.contain {
  width: 1200px;
  margin: 0 auto;
}
.fu {
  width: 100%;
  background: #fcf5e1;
  border-bottom: 1px solid #d9ae6e;
  overflow: hidden;
}
.erzi {
  width: 1200px;
  height: 52px;
  margin: 0 auto;
  display: block;
  display: flex;

  li {
    width: 192px;
    font-size: 16px;
    color: #333333;
    line-height: 52px;
    text-align: center;
    align-items: center;
  }
}
.bc {
  display: flex;
  align-items: flex-end;
  margin: 30px 0px;
}
.bc p {
  margin-right: 10px;
}
.tupian {
  width: 1200px;
  height: 173px;

  .bg {
    width: 100%;
    height: 125px;
    background: url(../../assets/bg1.png) no-repeat center top;
    background-size: cover;
    img {
      margin: 0 auto;
      padding-top: 47px;
      display: block;
    }
  }
}
.xzq {
  width: 100%;
  display: flex;
  justify-content: space-evenly;
  color: #664f10;
}
.sel {
  width: 346.38px;
  height: 38px;
  padding: 0 10px;
}
.input {
  width: 346.38px;
  height: 38px;
  padding: 0 10px;
  color: #664f10;
}
.btn1 {
  background: #b78439;
  border: 0;
  color: #fff;
  cursor: pointer;
  font-size: 14px;
  height: 40px;
  width: 126px;
  border-radius: 5px;
  align-items: center;
}
.neirong {
  margin-top: 30px;
  margin-bottom: 50px;
  width: 100%;
}
.nei {
  width: 100%;
  justify-content: start;
  display: flex;
  flex-wrap: wrap;
}
.nei :nth-child(3) {
  margin-right: 0;
}
.gd2-2 {
  width: 380px;
  height: 380px;
  position: relative;
  overflow: hidden;
  border-radius: 10px;
  margin-bottom: 30px;
  margin-right: 30px;
  box-sizing: border-box;
}

.pic {
  width: 380px;
  overflow: hidden;
  img {
    width: 100%;
    object-fit: cover;
  }
}

.txt {
  position: absolute;
  background: rgba(0, 0, 0, 0.4);
  padding: 0 20px;
  color: #fff;
  width: 380px;
  height: 154px;
  bottom: 0;
  box-sizing: border-box;
}

.txt h1 {
  font-size: 24px;

  a {
    color: #fff;
    cursor: pointer;
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
  border: 1px none;
  color: #fff;
  position: absolute;
  bottom: 15px;
  right: 15px;
}

.d1:hover {
  background-color: red;
}

.logo {
  position: absolute;
  top: 0;
  left: 0;
}
</style>