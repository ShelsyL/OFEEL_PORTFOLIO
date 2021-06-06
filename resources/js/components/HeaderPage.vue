<template>
  <!-- Header Page-->
  <section class="dark-wrapper opaqued parallax" data-parallax="scroll" data-image-src="assets/img/bg/bg2.jpg" data-speed="0.7">
    <div class="section-inner pad-top-200">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 mt30 wow text-center">
            <h2 class="section-heading">{{ work.title }}</h2>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  data () {
    return{};
  },

  computed: {
    work(){
      return this.$store.getters.getWork;
    },
  }
}
</script>
