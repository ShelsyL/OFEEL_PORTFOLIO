<template>
<div class="">

  <!-- Page Header Home -->
  <header-home></header-home>

  <section>
      <div class="section-inner">
        <!-- TITRE ET NAVIGATION DE LA SECTION -->
          <div class="container">
              <div class="row">
                  <div class="col-md-6 mb100 wow">
                      <h2 class="section-heading">Recent Works</h2>
                      <h3 class="section-subheading secondary-font">Liste des works de {{ prenom }}</h3>
                  </div>
                  <div class="col-md-6 text-right">
                      <ul class="portfolio-filter mb30 list-inline wow">
                          <li><a class="btn btn-primary active" href="#" data-filter="*">All</a></li>
                          <li><a class="btn btn-primary" href="#" data-filter=".apps">Apps</a></li>
                          <li><a class="btn btn-primary" href="#" data-filter=".design">Design</a></li>
                          <li><a class="btn btn-primary" href="#" data-filter=".photography">Photography</a></li>
                          <li><a class="btn btn-primary" href="#" data-filter=".video">Video</a></li>
                      </ul>
                  </div>
              </div>
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
        return {
          works: []
        }
      },
      computed: {
        prenom () {
          return this.$store.getters.getPrenom
        }
      },
      created () {
        axios.get('api/works') // Route que l'on veut utilisé (api/works)
             .then(reponsePHP => (this.works = reponsePHP.data)) // Réponse php | On fait que this.works sera égal à reponsePHP.data | On rcupère le tableau Json qui va etre envoyé par l'api
      }
    }
</script>
