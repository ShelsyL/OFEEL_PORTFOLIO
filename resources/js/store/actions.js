// ./resources/js/store/actions.js

let actions = {

 /**
  * WORKS
  * @param {[type]} commit [description]
  */
  setWorks ({commit}) {
    console.log("action setWorks");
    axios.get('api/works')
         .then(reponsePHP => (commit ('SET_WORKS', reponsePHP.data)));
  },


 /**
  * CATEGORIES
  * @param {[type]} commit [description]
  */
  setCategories ({commit}) {
    console.log("action setCategories");
    axios.get('api/categories')
         .then(reponsePHP => (commit ('SET_CATEGORIES', reponsePHP.data)));
  },


  /**
   * WORK
   * @param {[type]} commit [description]
   */
   setWork ({commit}, id) {
     console.log("action setWork : id=" + id);
     axios.get('api/works/' + id )
          .then(reponsePHP => (commit ('SET_WORK', reponsePHP.data)));
   },


  /**
   * COMMENTS PAR ID DU WORK
   */
   setWorkcomments ({commit}, id) {
     console.log("action setWorkcomments : id=" + id);
     axios.get('api/workcomments/work/'+ id )
          .then(reponsePHP => (commit('SET_WORKCOMMENTS', reponsePHP.data)));
   },


  /**
   * CREATION DU COMMENTS
   */
   createWorkcomment({commit}, comment) {

     console.log("action createWorkcomment :");
     console.log(comment);
     // Envois le commentaire dans la liste des commentaires
     axios.post('api/workcomments', comment)
          .then(reponsePHP => {
       console.log(reponsePHP);
       if(reponsePHP.status == 200){
         console.log("sucess");
                // Recuperation de tous les commentaires du work
                this.dispatch('setWorkcomments', comment.work_id);
              }
          })
          .catch(err => {console.log(err)})
   }

};

export default actions;

// https://laravel.com/docs/8.x/controllers#basic-controllersponsePHP.data)));
