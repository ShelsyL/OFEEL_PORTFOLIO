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
   }
};

export default actions;
