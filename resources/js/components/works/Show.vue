<template>

  <div class="">
    <header-page></header-page>

    <section>
      <div class="section-inner">
        <div class="container">
          <div class="row project-item">

            <div class="col-sm-3">
              <h3>{{ work.title }}</h3>
              <p><strong>DATE:</strong> 21/01/2015</p>
              <p><strong>CLIENT:</strong> Jeeves Design</p>

              <!-- TAGS DU WORK -->
              <strong>TAGS:</strong>
              <div v-for="tag in this.work.tags" :key="tag.id">
                <router-link :to="{name: 'tags.show', params: { id: tag.id }}">
                  <!-- <a>- {{ tag.name }}</a> -->
                  <a href="#" class="btn-perso">{{ tag.name }}</a>
                </router-link>
              </div>

              <!-- DESCRIPTION DU WORK -->
              <div>
                <strong>DESCRIPTION:</strong>
                <p>{{ work.description }}</p>
              </div>

            </div>

            <div class="col-sm-9 mb60 wow">
              <div class="row">
                <div class="col-xs-12 single-post-content">
                  <div class="gap">
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

    <comments-work></comments-work>

  </div>
</section>
</div>
</template>


<script>
export default {

  data () {
    return {
      //work : null,
      loading: false,
      error: null
    }
  },

  computed: {
      work(){
        return this.$store.getters.getWork;
      },
  },

  beforeCreate() {
  },

  created(){
    console.log("works/Show - created")
    this.fetchData_work()
    //let id = this.$route.params.id
    //this.$store.dispatch('setCurrentWork', id);
    // this.fetchData_work() // recuperer les données data
  },

  watch: {
    // appeler encore la méthode si la route change
     '$route': 'fetchData_work'
  },

  methods: {
      fetchData_work: function(){
      console.log("fetchData_work")
      let id = this.$route.params.id;
      this.$store.dispatch('setWork', id);
    }
  }
}
</script>
