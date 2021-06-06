// ./resources/js/store/getters.js

let getters = {


  // ALL WORKS
  getWorks (state) {
    let works = state.works;
    return works;
  },


  // WORK
  getWork (state) {
    let work = state.work;
    return work;
  },


  // ALL CATEGORIES
  getCategories (state) {
    let categories = state.categories;
    return categories;
  },


  // WORKS BY CATEGORIE ID
  getWorksByCategorieId (state) {
    return function (id) {
      let works = state.works.filter(work => work.categorie_ids.includes(id)); // includes : permet de déterminer si un tableau contient une valeur (true/false)
      return works;
    }
  },


  // COMMENTS
  getComments (state) {
    return function (id) {
      let comments = state.workcomments;
      return comments;
    }
  },


  // TAGS
  getTags (state) {
    let tags = state.tags;
    return tags;
  },


  // WORKS BY TAG ID
  getWorksByTagId (state) {
    return function (id) {
      let works = state.works.filter(work => work.tag_ids.includes(id));
      return works;
    }
  },

};

export default getters;

// Doc includes : https://developer.mozilla.org/fr/docs/Web/JavaScript/Reference/Global_Objects/Array/includes
