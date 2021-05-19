// ./resources/js/store/mutations.js

let mutations = {

  SET_WORK (state, data) {
    console.log('SET_WORK');
    console.log(data);
    state.work = data;
  },


  SET_WORKS (state, data) {
    console.log('SET_WORKS');
    console.log(data);
    state.works = data;
  },


  SET_CATEGORIES (state, data) {
    console.log('SET_CATEGORIES');
    console.log(data);
    state.categories = data;
  }

};

export default mutations;
