// ./resources/js/store/mutations.js

let mutations = {


  SET_WORK (state, data) {
    state.work = data;
  },


  SET_WORKS (state, data) {
    state.works = data;
  },


  SET_CATEGORIES (state, data) {
    state.categories = data;
  },


  SET_WORKCOMMENTS (state, data) {
    state.workcomments = data;
  },


  SET_TAGS (state, data) {
    state.tags = data;
  },


};

export default mutations;
