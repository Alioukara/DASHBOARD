<template>
  <div class="time">
    <div><img src="../assets/delete.png" alt="loupe"  @click=" deleteWidget" /></div>
    <h3>The World Clock</h3>
    <div>
      <form @submit.prevent="getTimetown1">
        <label>Choose a Town:</label>
        <select name="town" v-model="time1">
          <option value="Africa/Algiers">Algiers</option>
          <option value="Africa/Cairo">Cairo</option>
          <option value="Africa/Casablanca">Casablanca</option>
          <option value="America/Los_Angeles">Los_Angeles</option>
          <option value="America/New_York">New_York</option>
          <option value="America/Bogota">Bogota</option>
          <option value="Europe/Paris">Paris</option>
          <option value="Asia/Hong_Kong">Hong_Kong</option>
          <option value="Australia/Sydney">Sydney</option>
        </select>
        <img src="../assets/loupe.png" alt="loupe" @click="getTimetown1" />
      </form>
      <form @submit.prevent="getTimetown2">
        <select name="town" v-model="time2">
          <option value="Africa/Algiers">Algiers</option>
          <option value="Africa/Cairo">Cairo</option>
          <option value="Africa/Casablanca">Casablanca</option>
          <option value="America/Los_Angeles">Los_Angeles</option>
          <option value="America/New_York">New_York</option>
          <option value="America/Bogota">Bogota</option>
          <option value="Europe/Paris">Paris</option>
          <option value="Asia/Hong_Kong">Hong_Kong</option>
          <option value="Australia/Sydney">Sydney</option>
        </select>
        <img src="../assets/loupe.png" alt="loupe" @click="getTimetown2" />
      </form>
    </div>
    <div>
      <p class="town1" v-if="time.town1">Town1: {{ time.town1 }}</p>
      <p class="town2" v-if="time.town2">Town2: {{ time.town2 }}</p>
    </div>
  </div>
</template>

<script>
export default {
  props: {
   widget: Object,
  },
  data: function () {
    return {
      time1: "",
      time2: "",
      time: [
        {
          town1: "",
          town2: "",
        },
      ],
    };
  },
  methods: {
    getTimetown1() {
      this.$http
        .get(`${process.env.VUE_APP_ENDPOINT7}/api/${this.time1}`)
        .then((response) => {
          this.time.town1 = response.data;
        })
        .catch((error) => {
          console.log(error);
        });
    },
    getTimetown2() {
      this.$http
        .get(`${process.env.VUE_APP_ENDPOINT7}/api/${this.time2}`)
        .then((response) => {
          this.time.town2 = response.data;
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
.time {
  position: relative;
  width: auto;
  height: auto;
  margin: 20px;
  max-height: 500px;
  max-width: 300px;
  border-radius: 20px;
  padding: 40px;
  box-shadow: 5px 5px rgb(228, 91, 91);
  box-sizing: border-box;
  background: #e4c04d;
}
.town1 {
  height: 30px;
  width: 200px;
  margin-top: 10px;
  border-radius: 10%;
  box-sizing: border-box;
  box-shadow: 7px 7px 10px #cbced1, -7px -7px 10px white;
  background: #79eea0;
}
.town2 {
  height: 30px;
  width: 200px;
  margin-top: 10px;
  border-radius: 10%;
  box-sizing: border-box;
  box-shadow: 7px 7px 10px #cbced1, -7px -7px 10px white;
  background: #f182b6;
}
</style>
