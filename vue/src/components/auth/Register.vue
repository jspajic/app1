<template>
  <div class="wrapper col-md-6 offset-md-3">
    <form class="form-register" v-on:submit.prevent="register">
      <h2 class="form-register-heading col-md-6 offset-md-3">Registriraj se!</h2>
      <input 
      type="text" 
      class="form-control gap" 
      name="name"  
      placeholder="Ime i prezime"
      v-model="agent.name"
       autofocus />
      <input
        type="text"
        class="form-control form-spacing-top gap"
        name="username"
        placeholder="Korisnicko ime"
        v-model="agent.username"
      />
      <input
        type="password"
        class="form-control form-spacing-top gap"
        name="password"
        placeholder="Sifra"
        v-model="agent.password"
      />
      <input type="email" class="form-control form-spacing-top gap" name="email" placeholder="Email" v-model="agent.email" />
      <button class="btn btn-lg btn-primary btn-block form-spacing-top" type="submit">Registriraj se</button>
    </form>
  </div>
</template>

<script>
import { req } from "../axios";

export default {
  name: "Register",
  data() {
    return {
      agent: {}
    };
  },
  methods: {
    register() {
        req.
        put("/register",{
          name: this.agent.name,
          username: this.agent.username,
          email: this.agent.email,
          password: this.agent.password
        })
        .then(notify => {
          alert("Uspjesna registracija!")
          if(event){
            router.push({ name: "Login"})
          }
        })
        .catch(error => {
          if(error){
            alert("Neuspjela registracija!");
          }
        })
    }
  }
};
</script>