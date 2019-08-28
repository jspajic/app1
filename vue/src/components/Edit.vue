<template>
  <div class="container">
    <div class="card">
      <div class="card-header">
        <h3>Uredi Igraca</h3>
      </div>
      <div class="card-body">
        <form v-on:submit.prevent="updatePlayer">
          <div class="form-group">
            <label>Ime:</label>
            <input type="text" class="form-control" v-model="player.name" />
          </div>
          <div class="form-group">
            <label>Starost:</label>
            <input type="text" class="form-control" v-model="player.age" />
          </div>
          <div class="form-group">
            <label>Klub:</label>
            <input type="text" class="form-control" v-model="player.club" />
          </div>
          <div class="form-group">
            <label>Vrijednost:</label>
            <input type="text" class="form-control" v-model="player.net_worth" />
          </div>
          <div class="form-group">
            <input type="submit" class="btn btn-primary" value="Azuriraj podatke" />
          </div>
        </form>
      </div>
    </div>
  </div>
</template>
<script>
import { req } from "./axios";
export default {
  data() {
    return {
      player: {}
    };
  },
  created: function() {
    this.getPlayer();
  },
  methods: {
    getPlayer() {
       req
        .get("/player/" + this.$route.params.id)
        .then(response => {
          this.player = response.data;
        })
        .catch(error => {
          console.log(error);
        });
    },
    updatePlayer() {
       req
        .put("/player/edit/" + this.$route.params.id, {
          name: this.player.name,
          age: this.player.age,
          club: this.player.club,
          net_worth: this.player.net_worth
        })
        .then(response => {
          alert("Korisnik uspjesno azuriran!");
        })
        .catch(error => {
          console.log(error);
        });
    }
  }
};
</script>