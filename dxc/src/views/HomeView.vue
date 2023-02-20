<template>
  <div class="home">
    <router-view />
    <Header></Header>
    <FootNav></FootNav>
    <Foot></Foot>
  </div>
</template>

<script>
export default {};
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
