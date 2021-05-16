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
                      <li v-for="work in this.works" :key="work.id" class="col-sm-4 col-xs-12 portfolio-item nopadding-lr apps isotope-item">
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
      works: null,
      loading: false,
      error: null
    }
  },

    beforeCreate() {
        console.log('beforeCreate')
    },
    created() {
        console.log('created')
        this.fetchData()
    },
    beforeMount() {
        console.log('beforeMount')
    },
    mounted() {
          console.log('mounted')
    },
    beforeUpdate() {
        console.log('beforeUpdate')
    },
    updated() {
        console.log('updated')
    },
    beforeDestroy() {
        console.log('beforeDestroy')
    },
    destroyed() {
        console.log('destroyed')
    },

    watch: {
      // appeler encore la mÃ©thode si la route change
      '$route': 'fetchData'
    },


  methods: {
    fetchData: function() {
      console.log('fetchData')

      let idCat = this.$route.params.id
      console.log(typeof(idCat))
      console.log(idCat)

      if(typeof idCat === 'undefined'){
        console.log('is')
        this.getAllWorks()
      }else{
        console.log('isnt')
        this.getWorksByCategorie()
      }
    },

    getAllWorks: function() {
      console.log('getAllWorks');
      this.error = this.works = null
      this.loading = true
      axios.get('api/works/')
           .then( response => {
              console.log(response)
              this.works = response.data
      })
      .catch(error => {
        console.log(error)
        this.errored = error.toString()
      })
      .finally(() => this.loading = false)
    },

    getWorksByCategorie: function() {
      console.log('getWorksByCategorie');
      this.error = this.works = null
      this.loading = true
      let idCat = this.$route.params.id
      axios.get('api/works/categorie/' + idCat)
           .then( response => {
              console.log(response)
              this.works = response.data
      })
      .catch(error => {
        console.log(error)
        this.errored = error.toString()
      })
      .finally(() => this.loading = false)
    }
  }
}
</script>
