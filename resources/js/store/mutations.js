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
  },


  SET_WORKCOMMENTS (state, data) {
    console.log('SET_WORKCOMMENTS');
    console.log(data);
    state.workcomments = data;
},


SET_TAGS (state, data) {
  console.log('SET_TAGS');
  console.log(data);
  state.tags = data;
},


};

export default mutations;
