<template>
  <div class="">

    <!-- PAGE HEADER HOME -->
    <header-home></header-home>

    <section>
      <div class="section-inner">

        <!-- CATEGORIES WORKS -->
        <categories-menu></categories-menu>

        <!-- LISTE DES WORKS -->
        <div class="container">
          <div class="col-md-12">
            <ul class="portfolio-items nopadding-lr isotope list-unstyled">
              <li v-for="work in this.works" :key="work.id" class="col-sm-4 col-xs-12 portfolio-item nopadding-lr apps isotope-item">
                <div class="hover-item">
                  <img :src="'assets/img/portfolio/' + work.image" class="img-responsive smoothie" alt="work.title">
                  <div class="overlay-item-caption smoothie"></div>
                  <div class="hover-item-caption smoothie">
                    <div class="vertical-center smoothie">
                      <h3 class="smoothie mb30"><a href="single-portfolio-fullscreen.html" title="view project"></a></h3>
                      <a :href="'assets/img/portfolio/' + work.image" title="View Gallery" class="btn btn-primary lb-link smoothie">Zoom</a>
                      <router-link class="smoothie btn btn-primary" :to="{name: 'works.show', params: { id: work.id}}">View</router-link>
                    </div>
                  </div>
                </div>
              </li>

              <!-- BOUTON MORE WORKS -->
              <div class="col-md-12">
                <div class="buttons">
                  <button class="btn btn-gray" style="padding: 20px; border-radius: 10px; margin-top: 60px; margin-left: 50%;"  type="button" @click="moreWorks += 3">More</button>
                </div>
              </div>

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
      moreWorks: 6
    }
  },

  watch: {},

  computed: {
    works() {

      let id = this.$route.params.id;
      let routeName = this.$route.name

      if (routeName == "categories.show") {
        if(typeof id !== 'undefined') {
          return this.$store.getters.getWorksByCategorieId(id);
        }
      }

      else if (routeName == "tags.show") {
        if(typeof id !== 'undefined') {
          return this.$store.getters.getWorksByTagId(id);
        }
      }

      else {
        let works =  _.orderBy(this.$store.getters.getWorks.slice(0, this.moreWorks), 'created_at', 'asc');
        return works;
      }
    },

  }
}
</script>
