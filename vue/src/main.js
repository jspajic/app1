import Vue from 'vue'
import VueRouter from 'vue-router';

import App from './App.vue';
import Create from './components/Create.vue';
import Edit from './components/Edit.vue';
import Index from './components/Index.vue';
import Login from './components/auth/Login.vue';
import Register from './components/auth/Register.vue';
import Search from './components/Search.vue';

import '../node_modules/bootstrap/dist/css/bootstrap.css';


Vue.use(VueRouter);

Vue.config.productionTip = false;

const routes = [
  {
    name: 'Create',
    path: '/create',
    component: Create
  },
  {
    name: 'Edit',
    path: '/edit/:id',
    component: Edit
  },
  {
    name: 'Index',
    path: '/index',
    component: Index
  },
  {
    name: 'Login',
    path: '/',
    component: Login
  },
  {
    name: 'Register',
    path: '/register',
    component: Register
  },
  {
    name: 'Search',
    path: '/search',
    component: Search
  },
];





const router = new VueRouter({ mode: 'history', routes: routes });


new Vue({
  render: h => h(App),
  router
}).$mount('#app')