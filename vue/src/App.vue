<template >
  <div id="app" class="container">
    <div v-show="$route.path==='/'  || $route.path==='/register'?false:true">
      <nav class="navbar navbar-expand-sm bg-light">
        <ul class="nav navbar-nav">
          <li class="nav-item">
            <router-link :to="{ name: 'Create' }" class="nav-link">Dodaj</router-link>
          </li>
          <li class="nav-item">
            <router-link :to="{ name: 'Index' }" class="nav-link">Lista svih igraca</router-link>
          </li>
          <li class="nav-item">
            <router-link :to="{ name: 'Search' }" class="nav-link">Pretrazi igrace</router-link>
          </li>
          <ul class="nav navbar-nav navbar-right">
          <li class="nav-item">
            <router-link class="nav-link" to="/" v-on:click="logout()">Logout</router-link>
          </li>
          </ul>
        </ul>
      </nav>
    </div>

    <transition name="fade">
      <div class="gap">
        <router-view></router-view>
      </div>
    </transition>
  </div>
</template>

<script>

import {req} from "axios";

export default {
  methods:{
    logout(){
      req.defaults.headers.common['Authorization'] = '';
    }
  }
};
</script>

<style>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s;
}
.fade-enter,
.fade-leave-active {
  opacity: 0;
}
.gap {
  margin-top: 20px;
}

.app {
  display: none;
}

.mtop{
  margin-top: 25%;
}
</style>