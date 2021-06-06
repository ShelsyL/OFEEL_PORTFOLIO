// ./src/router.js
import Vue    from 'vue'
import Router from 'vue-router'

// Chargement des composants des différentes routes
import WorksIndex from './components/works/Index'
import WorksShow  from './components/works/Show'

// Création du routing
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'work.index',
      component: WorksIndex
    },
    {
      path: '/works/:id',
      name: 'works.show',
      component: WorksShow
    },
    {
      path: '/works/categories/:id',
      name: 'categories.show',
      component: WorksIndex
    },
    {
      path: '/works/tags/:id',
      name: 'tags.show',
      component: WorksIndex
    }
  ]
})
