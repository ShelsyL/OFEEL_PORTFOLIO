// ./resources/js/store/actions.js

let actions = {

  // WORKS
  setWorks ({commit}) {
    axios.get('api/works')
         .then(reponsePHP => (commit ('SET_WORKS', reponsePHP.data)));
  },


  // WORK
  setWork ({commit}, id) {
    axios.get('api/works/' + id )
         .then(reponsePHP => (commit ('SET_WORK', reponsePHP.data)));
  },


  // CATEGORIES
  setCategories ({commit}) {
    axios.get('api/categories')
         .then(reponsePHP => (commit ('SET_CATEGORIES', reponsePHP.data)));
  },


  // TAGS
  setTags ({commit}) {
    axios.get('api/tags')
         .then(reponsePHP => (commit ('SET_TAGS', reponsePHP.data)));
  },


  // COMMENTS PAR ID DU WORK
  setWorkcomments ({commit}, id) {
    axios.get('api/workcomments/work/'+ id )
         .then(reponsePHP => (commit('SET_WORKCOMMENTS', reponsePHP.data)));
  },


  // CREATION DU COMMENTS
  createWorkcomment({commit}, comment) {
    // Envois le commentaire dans la liste des commentaires
    axios.post('api/workcomments', comment)
         .then(reponsePHP => {
      if(reponsePHP.status == 200){
        // Recuperation de tous les commentaires du work
        this.dispatch('setWorkcomments', comment.work_id);
      }
    })
    .catch(err => {console.log(err)})
  },


};

export default actions;

// DOCS : https://laravel.com/docs/8.x/controllers#basic-controllersponsePHP.data)));
