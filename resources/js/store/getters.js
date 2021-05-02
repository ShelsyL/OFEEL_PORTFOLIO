// ./resources/js/store/getters.js

let getters = {

  // WORKS
  // All WORKS
  getWorks (state) {
    return state.works;
  },
  // workById
  getWorkById (state) {
    return function (id) {
      return state.works.find(work => work.id == id);
    }
  }
};

export default getters;
