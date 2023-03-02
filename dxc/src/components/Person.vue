<template>
  <div class="person">
    <!-- src/components/Person.vue -->
    <img :src="avatar"/>
    <p>{{name}}</p>
    <i class="el-icon-error" @click="deleteActor"></i>
  </div>
</template>

<script>
export default {
  // props声明自定义属性，接收父组件传过来的参数: name  avatar
  // 一旦声明了这两个属性，
  // template中可以使用{{name}} {{avatar}}直接引用父组件传过来的参数
  props: ['name', 'avatar'],
  methods:{
    deleteActor(){
      this.$emit('del')
    },
  },
};
</script>

<style lang="scss" scoped>
.person {
  width: 80px;
  text-align: center;
  display: inline-block;
  margin-right: 10px;
  position: relative;
  img {
    width: 80px;
  }
  p {
    font-size: 0.8em;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    margin-bottom: 10px;
  }
  i{
    position: absolute;
    top: -8px;
    right: -8px;
    display: none;
  }
}
.person:hover i{
  display: block;
}
</style>
