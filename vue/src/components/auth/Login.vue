<template>
  <div class="wrapper col-md-6 offset-md-3 mtop">
    <form class="form-signin" v-on:submit.prevent="login">
      <h3 class="form-signin-heading col-md-6 offset-md-4">Logiraj se!</h3> 
      <router-link :to="{ name: 'Register' }">Registriraj se!</router-link>
      <input
        type="text"
        class="form-control form-spacing-top gap m-top"
        name="username"
        v-model="agent.username"
        placeholder="Korisnicko ime"
        autofocus
      />
      <input
        type="password"
        class="form-control form-spacing-top gap"
        name="password"
        v-model="agent.password"
        placeholder="Sifra"
      />
      <button class="btn btn-lg btn-primary btn-block form-spacing-top gap" type="submit">Login</button>
    
    </form>
  </div>
</template>

<script>
import { req } from "../axios";

export default {
  name: "Login",
  data() {
    return {
      agent: {},
      id: 0
    };
  },
  methods: {
    login() {
      req
        .put("/authenticate", {
          username: this.agent.username,
          password: this.agent.password
        })
        .then(response => {
            req.defaults.headers.common['Authorization'] = "Bearer " + response.data.token;
          if (response.status === 200) {
             this.$router.push({ name: "Index"})
          }
        })
        .catch(error => {
          alert("Pogresno korisnicko ime ili lozinka!");
        });
    }
  }
};
</script>