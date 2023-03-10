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
        <el-menu-item @click="queryAllPastry()" index="1">休闲零食</el-menu-item>
        <el-menu-item @click="queryAllPastry1()" index="2">休闲糕点</el-menu-item>
        <el-menu-item @click="queryAllPastry2()" index="3">桃酥</el-menu-item>
        <el-menu-item @click="queryAllPastry3()" index="4">鸡蛋卷</el-menu-item>
        <el-menu-item @click="queryAllPastry4()" index="5">瓦片系列</el-menu-item>
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
          <img src="../../assets/1056453111ce0f3d3-8.jpg" alt="" />
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
              <img style="height:100%;" :src="pic[i]" alt="" />
            </div>
            <div class="txt">
              <h1>
                <a href="#">{{item.title}}</a>
              </h1>
              <span
                >{{item.detail}}</span
              >
              <a href="#" class="d1">请进</a>
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
        cplx_id: 3,
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
    queryAllPastry1() {
      this.pic=[]
      let params = {
        cplx_id: 4,
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
    queryAllPastry2() {
      this.pic=[]
      let params = {
        cplx_id: 5,
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
    queryAllPastry3() {
      this.pic=[]
      let params = {
        cplx_id: 6,
        page: 1,
        pagesize: 100,
      };
      //糕点
      httpApi.eatApi.queryFoodsByPage(params).then((res) => {
        console.log(res);
        this.pastrys = res.data.data
        console.log('糕点数据3',this.pastrys )
        let pic = this.pastrys
        for(let i=0;i<=pic.length;i++ ){
          this.pic.push((pic[i].pic).split('@',[1]))
          console.log(this.pic+':图片')
        }
      });
    },
    queryAllPastry4() {
      this.pic=[]
      let params = {
        cplx_id: 7,
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
  },
  mounted(){
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
.nei :nth-child(3n){
  margin-right: 0;
}
.gd2-2 {
  width: 380px;
  height: 380px;
  position: relative;
  overflow: hidden;
  border-radius: 10px;
  margin-right: 30px;
  margin-bottom: 30px;
  box-sizing: border-box;

}

.pic {
  height: 380px;
  img {
    width: 380px;
    object-fit: cover;
  }
}

.txt {
  position: absolute;
  background: rgba(0, 0, 0, 0.4);
  padding: 0 20px;
  color: #fff;
  width: 380px;
  height: 158px;
  bottom: 0;
  box-sizing: border-box;
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