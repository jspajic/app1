<template>
  <div>
    <input
      class="form-control col-md-4"
      type="text"
      placeholder="Upisi pojam za pretragu i pritisni enter"
      v-model="search"
      aria-label="Search"
      v-on:keyup.enter="searchForPlayer"
    />
    <h1 class="gap">
      Rezultati pretrazivanja
      <small>Pronadeno igraca: {{players.length}}</small>
    </h1>

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
  data() {
    return {
      search: "",
      players: []
    };
  },
  methods: {
    searchForPlayer() {
      req
        .get("/search", {
          params: {
            searchTerm: this.search
          }
        })
        .then(response => {
          this.players = response.data;
          if (this.players.length === 0) {
            alert("Nema pronadenih igraca");
            this.search = "";
          }
        })
        .catch(error => {
          console.log(error);
        });
    }
  },
};
</script>