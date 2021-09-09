<template>
  <div class="widgetmeteo">
    <div><img src="../assets/delete.png" alt="loupe"  @click=" deleteWidget" /></div>
    <h4>meteo</h4>
    <form @submit.prevent="getWeather">
      <label>Choose a language:</label>
      <select name="language" v-model="lang">
        <option value="en">English</option>
        <option value="fr">French</option>
      </select>
      <input type="text" v-model="name" /><br />
      <button type="submit">Search</button>
      <br />
    </form>
    <div v-if="weather">
      <br />
      <p>City: {{ weather.name }}</p>
      <p>Country: {{ weather.sys.country }}</p>
      <p>
        {{ weather.main.temp }}°C
        <img src="https://img.icons8.com/color/48/000000/thermometer.png" />
      </p>
      <p>
        {{ weather.main.humidity }} %<img
          src="https://img.icons8.com/color/48/000000/humidity.png"
        />
      </p>
      <p>Description: {{ weather.weather[0].description }}</p>
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
      name: "Paris",
      lang: "fr",
      weather: "",
    };
  },
  methods: {
    getWeather() {
      if (this.name) {
        this.$http
          .get(process.env.VUE_APP_ENDPOINT5+`/api/meteo/${this.name}/${this.lang}`)
          .then((response) => {
            console.log(response.data);
            this.weather = response.data;
          });
      }
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

<style scoped>
.widgetmeteo {
  position: relative;
  width: auto;
  height: auto;
  max-height: 250px;
  max-width: 400px;
  border-radius: 20px;
  padding: 40px;
  box-shadow: 5px 5px black;
  box-sizing: border-box;
  background: rgb(158, 211, 236);
  /* box-shadow: 14px 14px 20px #cbced1, -14px -14px 20px white; */
  overflow: auto;
}
</style>