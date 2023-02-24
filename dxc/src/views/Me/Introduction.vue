<template>
  <div>
    <h3>企业介绍</h3>

    <div class="bj1"></div>

    <p>
      稻香村集团的前身为苏州稻香村，始创于公元1773年（清乾隆三十八年）的苏州，
      是中国糕点行业现存历史悠久的企业之一，作为国家首批认定的“中华老字号”及驰名中外的“稻香村”品牌创立者，
      历经两个多世纪的发展，一代代稻香村人的传承与创新，已成为闻名中外的大型现代化食品企业集团。
    </p>

    <img src="../../assets/me/qyjs01.jpg" class="qyjs">

    <div class="two">      
      <img src="../../assets/me/qyjtfz.png" class="font">
    </div>

    <div class="qyjtfz">
      <div class="left">
        <img src="../../assets/me/qyjs02.jpg" alt="">
        <div class="wz">
          <p class="title">182.77亿</p>
          <p class="desc">2022中国品牌价值评估,稻香村品牌价值182.77亿元。</p>
        </div> 
      </div>
      <div class="right">
        <ul>
          <li>
            <img src="../../assets/me/qyjs03.jpg" alt="">
            <div class="wz">
              <p class="title">7</p>
              <p class="desc">七大原料供应基地</p>
            </div>
          </li>
          <li>
            <img src="../../assets/me/qyjs03.jpg" alt="">
            <div class="wz">
              <p class="title">7</p>
              <p class="desc">七大原料供应基地</p>
            </div>
          </li>
        </ul>
      </div>
    </div>


  </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
.qyjs{
  margin: 20px 0px;
}
.bj1{
  width: 100%;
  height: 173px;
  background-image: url('../../assets/me/bj1.jpg');
  background-size: contain;
}
.two{
  width: 100%;
  height: 173px;
  background-image: url('../../assets/me/jgc-bj.jpg');
  background-size: contain; 
  background-repeat: no-repeat;
  display: flex;
}
// 图片居中,父弹性布局,子margin:auto
.font{
  width: 300px;
  margin: auto;
}

//企业集团发展
.qyjtfz{
  display: flex;
  .left{
    width: 700px;
    height: 600px;
    position: relative;
    img{
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .wz{
      display: flex;
      flex-direction: column;
      position: absolute;
      left: 0;
      bottom: 0;
      padding: 30px;
      .title{
        font-size: 72px;
        color: #fff;
      }
      .desc{
        font-size: 16px;
        color: #fff;
      }
    }

  }
  .right{
    width: 500px;
    border: 1px solid red;
    ul{
      display: flex;
      li{
        width: 250px;
        height: 200px;
        position: relative;
        img{
          width: 100%;
        }
        .wz{
          display: flex;
          flex-direction: column;
          position: absolute;
          left: 0;
          bottom: 0;
          padding: 20px;
          .title{
            font-size: 48px;
            color: #fff;
          }
          .desc{
            font-size: 14px;
            color: #fff;
          }
        }
      }
    }
  }
}
</style>