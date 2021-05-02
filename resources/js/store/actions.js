// ./resources/js/store/actions.js

let actions = {

  setWorks ({commit}) {
    // TRANSACTION AJAX pour lancer le SETTER
    axios.get('api/works')
         .then(reponsePHP => (commit ('SET_WORKS', reponsePHP.data)));
  }
};

export default actions;
