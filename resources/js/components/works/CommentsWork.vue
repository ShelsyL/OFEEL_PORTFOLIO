<template>
  <section>
    <div class="section-inner">
      <div class="container pad-sides-120">
        <div class="row">

          <div class="col-sm-3">
          </div>

          <div id="post-content" class="col-sm-9 blog-item mb60 wow">
            <div class="row">
              <div class="col-sm-12 single-post-content">

                <div id="comments-list" class="gap wow">
                  <div class="mt60 mb50 single-section-title">
                    <h3>Commentaires</h3>
                  </div>


                  <!-- AFFICHAGE DES COMMENTAIRES -->
                  <div class="media" v-for="workcomment in workcomments" :key="workcomment.id">
                    <div class="pull-left">
                      <img class="avatar comment-avatar" src="assets/img/users/ours.jpg" alt="">
                    </div>
                    <div class="media-body">
                      <div class="well">
                        <div class="media-heading">
                          <span class="heading-font">{{ workcomment.pseudo }}</span>&nbsp; <small>{{ workcomment.created_at }}30th Jan, 2015</small>
                        </div>
                        <p>{{ workcomment.content }}</p>
                        <!-- <a class="btn btn-primary pull-right" href="#">Reply</a> -->
                      </div>
                    </div>
                  </div>

                  <!-- LAISSER UN COMMENTAIRE -->
                  <div id="comments-form" class="row wow">
                    <div class="col-md-12">
                      <div class="mt60 mb50 single-section-title">
                        <h3>Laisser un commentaire</h3>
                      </div>
                      <form method="post" id="commentform" class="comment-form"  @submit.prevent="createWorkcomment(newWorkcomment)">
                        <input id="work_id" type="hidden" name="work_id" v-model="newWorkcomment.work_id = work.id">
                        <input type="text" class="form-control col-md-4"
                        id="pseudo"
                        name="pseudo"
                        placeholder="Votre Nom | Pseudo *"
                        v-model="newWorkcomment.pseudo"/>
                        <!-- <input type="text" class="form-control col-md-4" name="email2" placeholder="Votre Email *" id="email2" required data-validation-required-message="Please enter your email address." /> -->
                        <!-- <input type="text" class="form-control col-md-4" name="website2" placeholder="Your URL *" id="website2" required data-validation-required-message="Please enter your web address." /> -->
                        <textarea class="form-control"
                          id="content"
                          name="content"
                          placeholder="Votre message *"
                          v-model="newWorkcomment.content">
                        </textarea>
                        <!-- <a class="btn btn-primary pull-right" href="#">Envoyer</a> -->
                        <div>
                          <input type="submit" class="btn btn-primary pull-right" name="envoi" value="Envoyer" />
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name : 'comments-work',

  data () {
    return {
      newWorkcomment: {
        pseudo: '',
        content: '',
        work_id: ''
      }
    };
  },

  created () {
    this.getComments();
  },

  watch: {
    // appeler encore la méthode si la route change
    '$route': 'getComments'
  },

  methods: {
    // Envoi d'un nouveau comment
    createWorkcomment (comment) {
      this.$store.dispatch('createWorkcomment', comment)
      this.newWorkcomment = { pseudo: '', content: '', work_id: null }

    },
    getComments () {
      let id = this.$route.params.id;
      this.$store.dispatch('setWorkcomments', id);
    }
  },


  computed: {
    work(){
      return this.$store.getters.getWork;
    },

    // Affichage des commentaires
    workcomments () {
      return this.$store.getters.getComments();
    },
  }

}
</script>
