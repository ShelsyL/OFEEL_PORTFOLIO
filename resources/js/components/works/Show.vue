<template>

  <div class="">
    <!-- PAGE HEADER PAGE -->
    <header-page></header-page>

    <section>
      <div class="section-inner">
        <div class="container">
          <div class="row project-item">

                <div class="col-sm-3">
                  <h3>{{ work.title }}</h3>
                  <!-- <p><strong>DATE:</strong> 21/01/2015</p>
                  <p><strong>CLIENT:</strong> Jeeves Design</p> -->

                  <hr>

                  <!-- DESCRIPTION DU WORK -->
                  <p><strong>DESCRIPTION:</strong>
                    <div>{{ work.description }}
                    </div>
                  </p>

                  <hr>

                  <!-- TAGS DU WORK -->
                  <p><strong>TAGS:</strong>
                    <div v-for="tag in this.work.tags" :key="tag.id">
                      <router-link :to="{name: 'tags.show', params: { id: tag.id }}">
                        <!-- <a>- {{ tag.name }}</a> -->
                        <a href="#" class="btn-perso">{{ tag.name }}</a>
                      </router-link>
                    </div>
                  </p>
                </div>

                <div class="col-sm-9 mb60 wow">
                  <div class="row">
                    <div class="col-xs-12 single-post-content">

                      <!-- IMAGE DU WORK -->
                      <div class="gap">
                        <img :src="'storage/' + work.image" class="img-responsive " alt="title">
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

        <!-- COMMENTAIRES DU WORK -->
        <comments-work></comments-work>

      </div>
    </section>
  </div>
</template>


<script>
export default {

  data () {
    return {
    }
  },

  computed: {
    work(){
      return this.$store.getters.getWork;
    },
  },

  created(){
    // recuperer les données data
    this.fetchData_work()
  },

  watch: {
    // appeler encore la méthode si la route change
    '$route': 'fetchData_work'
  },

  methods: {
    fetchData_work: function(){
      let id = this.$route.params.id;
      this.$store.dispatch('setWork', id);
    }
  }
}
</script>

<!-- DOC WATCH:
https://router.vuejs.org/fr/guide/advanced/data-fetching.html
https://vuejs.org/v2/guide/computed.html#Computed-vs-Watched-Property
-->
