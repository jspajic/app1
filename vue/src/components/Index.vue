<template>
  <div>
    <h1>Igraci</h1>

    <table class="table table-hover">
      <thead>
        <tr>
          <td>Kod</td>
          <td>Ime</td>
          <td>Godine</td>
          <td>Klub</td>
          <td>Vrijednost</td>
          <td>Akcije</td>
        </tr>
      </thead>

      <tbody>
        <tr v-for="player in players" :key="player.id">
          <td>{{ player.id }}</td>
          <td>{{ player.name }}</td>
          <td>{{ player.age }}</td>
          <td>{{ player.club }}</td>
          <td>{{ player.net_worth }}</td>
          <td>
            <router-link
              :to="{name: 'Edit', params: { id: player.id }}"
              class="btn btn-primary"
            >Uredi</router-link>
          </td>
          <td>
            <button class="btn btn-danger" v-on:click="deletePlayer(player.id)">Izbrisi</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import { req } from "./axios";
export default {
  name: "index",
  data() {
    return {
      players: []
    };
  },
  created: function() {
    this.fetchAll();
  },
  methods: {
    fetchAll() {
      req
      .get("/players")
      .then(response => {
        this.players = response.data;
      });
    },
    deletePlayer(code) {
      req
        .delete("/player/" + code)
        .then(refresh => {
          this.fetchAll();
        })
        .catch(error => {
          console.log(error);
        });
    }
  }
};
</script>