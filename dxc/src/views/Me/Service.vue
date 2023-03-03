<template>
  <div>

    <div v-for="item in ideas" :key="item.id">
      <div class="two">
        <img :src="item.pic" class="font">
      </div>
      <p>{{item.content}}</p>
    </div>

    <div style="height:80px"></div>
  </div>
</template>

<script>
import  httpApi  from '../../http';


  export default {
    data() {
      return {
        ideas: []
      }
    },
    methods: {
      listIdeas(){
        httpApi.meApi.queryFwln().then(res=>{
          console.log('加载服务理念',res);
          this.ideas=res.data.data
        })
      }
    },
    mounted(){
      this.listIdeas()
    }


  }
</script>

<style lang="scss" scoped>
.two{
  width: 100%;
  height: 173px;
  background-image: url('../../assets/me/bj1.jpg');
  background-size: contain; 
  display: flex;
  .font{
    width: 200px;
    margin: auto;
  }
}

p{
  text-align: center;
  margin-bottom: 80px;
}

</style>