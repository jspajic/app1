<template>
  <div class="container">
    <div class="card">
      <div class="card-header">
        <h3>Dodaj igraca</h3>
      </div>
      <div class="card-body">
        <form v-on:submit.prevent="addPlayer">
          <div class="form-group">
            <label>Ime i prezime:</label>
            <input type="text" class="form-control" v-model="player.name" required />
          </div>
          <div class="form-group">
            <label>Godine:</label>
            <input type="text" class="form-control" v-model="player.age" required />
          </div>
          <div class="form-group">
            <label>Klub:</label>
            <input type="text" class="form-control" v-model="player.club" required />
          </div>
          <div class="form-group">
            <label>Trzisna cijena:</label>
            <input type="text" class="form-control" v-model="player.net_worth" required />
          </div>
          <div>
            <label>Agent:</label>
            <select class="form-group form-control" v-model="selectedAgent" required>
              <option v-for="agent in agents" :key="agent.key" :value="agent">{{agent.name}}</option>
            </select>
          </div>
          <div class="form-group">
            <input type="submit" class="btn btn-primary" value="Dodaj igraca" />
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import { req } from "./axios";
export default {
  components: {
    name: "DodajIgraca"
  },
  data() {
    return {
      player: {},
      agents: {},
      selectedAgent: {}
    };
  },
  created: function() {
    req
      .get("/agents")
      .then(response => {
        this.agents = response.data;
      })
      .catch(error => {
        console.log(error);
      });
  },
  methods: {
    addPlayer() {
      req
        .post("/player", {
          name: this.player.name,
          age: this.player.age,
          club: this.player.club,
          net_worth: this.player.net_worth,
          agentID: this.selectedAgent.id
        })
        .then(notify => {
          alert("Igrac uspjesno dodan!");
          if (event) {
            (this.player.name = ""),
              (this.player.age = ""),
              (this.player.club = ""),
              (this.player.net_worth = "");
          }
        })
        .catch(error => {
          console.log(error);
        });
    }
  }
};
</script>