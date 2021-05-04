// ./resources/js/store/actions.js

let actions = {

 /**
  * WORKS
  * @param {[type]} commit [description]
  */
  setWorks ({commit}) {
    // TRANSACTION AJAX pour lancer le SETTER
    axios.get('api/works')
         .then(reponsePHP => (commit ('SET_WORKS', reponsePHP.data)));
  },


 /**
  * CATEGORIES
  * @param {[type]} commit [description]
  */
  setCategories ({commit}) {
    axios.get('api/categories')
         .then(reponsePHP => (commit ('SET_CATEGORIES', reponsePHP.data)));
  },

};

export default actions;
