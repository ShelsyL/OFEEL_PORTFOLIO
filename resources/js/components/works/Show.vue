<template>

  <!-- <div class="">
  <header-page></header-page>
  <h2>Détail du Work</h2>
</div> -->

<div class="">
  <header-page></header-page>

  <div class="section-inner">
    Show.vue
    {{ $route.params.id }}
  </div>
  <section>
    <div class="section-inner">
      <div class="container">
        <div class="row project-item">
          <div class="col-sm-3">
            <h2>{{ work.title }}</h2>
            <p>{{ work.description }}
            </p>
          </div>
            <div class="col-sm-9 mb60 wow">
              <div class="row">
                <div class="col-xs-12 single-post-content">
                  <div class="hover-item gap">
                    <img :src="'assets/img/portfolio/' + work.image" class="img-responsive " alt="title">
                  </div>
                  <!-- <div class="hover-item gap">
                    <img :src="'assets/img/portfolio/portfolio4.jpg'" class="img-responsive " alt="title">
                  </div>
                  <div class="hover-item gap">
                    <img :src="'assets/img/portfolio/portfolio9.jpg'" class="img-responsive " alt="title">
                  </div> -->
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </section>
</div>

</template>

<script>
    export default {
      data () {
        return {
          }
        }
        ,
        computed: {
          work () {
            let id = this.$route.params.id;
            // console.log(this);
            return this.$store.getters.getWorkById(id);
          }
        }
    }
</script>
