// ./resources/js/store/getters.js

let getters = {


  /**
  * ALL WORKS
  * @param  {[type]} state [description]
  * @return works
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
      console.log('getWorksByCategorieId, id=' + id);
      let works = state.works.filter(work => work.categorie_ids.includes(id));
      console.log(works);
      return works;
    }
  },


  /**
   * COMMENTS
   */
  getComments (state) {
    return function (id) {
      let comments = state.workcomments;
      console.log('getComments');
      console.log(comments);
      return comments;
    }
  },


  /**
   * TAGS
   */
  getTags (state) {
    let tags = state.tags;
    console.log('getTags');
    console.log(tags);
    return tags;
  }

};

export default getters;
