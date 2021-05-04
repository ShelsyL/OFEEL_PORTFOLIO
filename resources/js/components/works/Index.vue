<template>
<div class="">

  <!-- Page Header Home -->
  <header-home></header-home>

  <section>
      <div class="section-inner">

        <!-- CATEGORIES WORKS -->
        <categories-menu></categories-menu>

        <div class="container">
         id =   {{this.$route.params.id}}
        </div>

          <!-- LISTE DES WORKS -->
          <div class="container">
              <div class="col-md-12">
                  <ul class="portfolio-items nopadding-lr isotope list-unstyled">
                      <li v-for="work in works" :key="work.id" class="col-sm-4 col-xs-12 portfolio-item nopadding-lr apps isotope-item">
                          <div class="hover-item">
                              <img :src="'assets/img/portfolio/' + work.image" class="img-responsive smoothie" alt="work.title">
                              <div class="overlay-item-caption smoothie"></div>
                              <div class="hover-item-caption smoothie">
                                  <div class="vertical-center smoothie">
                                      <h3 class="smoothie mb30"><a href="single-portfolio-fullscreen.html" title="view project">Fullscreen Gallery</a></h3>
                                      <a :href="'assets/img/portfolio/' + work.image" title="View Gallery" class="btn btn-primary lb-link smoothie">Zoom</a>
                                      <router-link class="smoothie btn btn-primary" :to="{name: 'works.show', params: { id: work.id}}">View</router-link>
                                  </div>
                              </div>
                          </div>
                      </li>
                  </ul>
              </div>
          </div>
      </div>
  </section>
</div>
</template>

<script>
    export default {
      data () {
        return {}
      },

      computed: {
        works () {
          let idCat = this.$route.params.id;
          if(typeof idCat !== 'undefined' && idCat !== 1){
            // console.log("Coucou");
           return this.$store.getters.getWorksByCategorieId(idCat);
          }

          return this.$store.getters.getWorks;
        }
      }
    }
</script>
