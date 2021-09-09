<template>
  <div>
    
    <div class="widget">
      <div><img src="../assets/delete.png" alt="loupe"  @click=" deleteWidget" /></div>
      <div v-if="infoteam.name == null">
        <h3>Nba Logos</h3>
        <div v-for="item in team" :key="item" :team="item">
          <img
            id="logos"
            :src="`http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/${item.abreviation}.png`"
            width="80"
            height="80"
            @click="getTeamByName(item.name)"
          />
          <!-- {{ item.name }} -->
        </div>
      </div>
      <img src="../assets/go-back.png" @click="getTeamByName"><br><hr>
      <h1 v-if="infoteam.name">Team Infos</h1>
      <p v-if="infoteam.name"><strong>Name:</strong> {{ infoteam.name }}</p>
      <p v-if="infoteam.city"><strong>City:</strong> {{ infoteam.city }}</p>
      <p v-if="infoteam.conference">
        <strong>Conference:</strong> {{ infoteam.conference }}
      </p>
      <p v-if="infoteam.division">
        <strong>Division:</strong> {{ infoteam.division }}
      </p>
    </div>
  </div>
</template>

<script>
export default {
  props: {
   widget: Object,
  },
  data() {
    return {
      team: [
        { abreviation: "atl", name: "hawks" },
        { abreviation: "bkn", name: "nets" },
        { abreviation: "bos", name: "celtics" },
        { abreviation: "cha", name: "hornets" },
        { abreviation: "chi", name: "bulls" },
        { abreviation: "cle", name: "cavaliers" },
        { abreviation: "dal", name: "mavericks" },
        { abreviation: "den", name: "nuggets" },
        { abreviation: "det", name: "pistons" },
        { abreviation: "gsw", name: "warriors" },
        { abreviation: "hou", name: "rockets" },
        { abreviation: "ind", name: "pacers" },
        { abreviation: "lac", name: "clippers" },
        { abreviation: "lal", name: "lakers" },
        { abreviation: "mem", name: "grizzlies" },
        { abreviation: "mia", name: "heat" },
        { abreviation: "mil", name: "bucks" },
        { abreviation: "min", name: "timberwolves" },
        { abreviation: "nop", name: "pelicans" },
        { abreviation: "nyk", name: "knicks" },
        { abreviation: "okc", name: "thunder" },
        { abreviation: "orl", name: "magic" },
        { abreviation: "phi", name: "76ers" },
        { abreviation: "phx", name: "suns" },
        { abreviation: "por", name: "blazers" },
        { abreviation: "sac", name: "kings" },
        { abreviation: "sas", name: "spurs" },
        { abreviation: "tor", name: "raptors" },
        { abreviation: "uta", name: "jazz" },
        { abreviation: "was", name: "wizards" },
      ],
      infoteam: [
        {
          name: "",
          city: "",
          conference: "",
          division: "",
        },
      ],
    };
  },
  created() {
    this.getTeamByName();
  },
  methods: {
    getTeamByName(name) {
      this.$http
        .get(`${process.env.VUE_APP_ENDPOINT6}/api/teams/${name}`)
        .then((response) => {
          this.infoteam.name = response.data.name;
          this.infoteam.city = response.data.city;
          this.infoteam.conference = response.data.conference;
          this.infoteam.division = response.data.division;
        })
        .catch((error) => {
          console.log(error);
        });
    },
    deleteWidget () {
   
    this.$http
        .delete(process.env.VUE_APP_ENDPOINT+"/api/deletewidget/"+this.$props.widget.id, {
          headers: {
            Authorization: "Bearer " + this.$cookies.get("token"),
          },
        })
       
        .then((response) => {
          response = "DELETED"
          console.log(response)
          this.$emit("removeWidget", this.$props.widget.id);
          
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
};
</script>

<style>
.widget {
  position: relative;
  width: auto;
  height: auto;
  max-height: 250px;
  max-width: 400px;
  border-radius: 20px;
  padding: 40px;
  box-shadow: 5px 5px black;
  box-sizing: border-box;
  background: rgb(241, 196, 112);
  /* box-shadow: 14px 14px 20px #cbced1, -14px -14px 20px white; */
  overflow: auto;
}

div {
  display: inline-block;
}

img {
  cursor: pointer;
}


</style>