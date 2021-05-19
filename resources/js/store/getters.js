// ./resources/js/store/getters.js

let getters = {


  /**
  * ALL WORKS
  * @param  {[type]} state [description]
  * @return {[type]}       [description]
  */
  getWorks (state) {
    let works = state.works;
    console.log('getWorks');
    console.log(works);
    return works;
  },


  /**
   * WORK
   * @param  {[type]} state [description]
   * @return {[type]}       [description]
   */
  getWork (state) {
    let work = state.work;
    console.log('getWork');
    console.log(work);
    return work;
  },


  /**
  * ALL CATEGORIES
  * @param  {[type]} state [description]
  * @return {[type]}       [description]
  */
  getCategories (state) {
    let categories = state.categories;
    console.log('getCategories');
    console.log(categories);
    return categories;
  },


  /**
  * WORKS BY CATEGORIE ID
  * @param  {[type]} state [description]
  * @return {[type]}       [description]
  */
  getWorksByCategorieId (state) {
    return function (id) {
      let works = state.works.filter(work => work.categorie_ids.includes(id));
      console.log('getWorksByCategorieId');
      console.log(works);
      return works;
    }
  }

};

export default getters;
