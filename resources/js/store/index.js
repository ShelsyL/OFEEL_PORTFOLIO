// ./src/js/store/index.js
import Vue  from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex);

export default new Vuex.Store({
  state: {   // PROPRIETES
    prenom: 'Chelsea'
  },
  getters: {
    getPrenom (state) {
      return state.prenom;
    }
  }
})
