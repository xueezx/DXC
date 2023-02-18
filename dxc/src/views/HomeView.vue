<template>
  <div class="home">
    <Header></Header>
    <FootNav></FootNav>
    <Foot></Foot>
  </div>
</template>

<script>
import  Header  from '../components/header.vue';
import  FootNav  from '../components/footNav.vue';
import  Foot  from '../components/foot.vue';
export default {
  components:{
    Header,
    FootNav,
    Foot
  },

}
</script>
