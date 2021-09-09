<template>
  <div class="widgetcountry">
    <div><img src="../assets/delete.png" alt="loupe"  @click=" deleteWidget" /></div>
    <h4>Country Informations</h4>
    <input placeholder="-- type country --" type="text" v-model="name" /><br />
    <br />
    <button @click="getCountryByName" type="submit">Search</button>
    <br />
    <br />
    <div v-for="item in country" :key="item" :country="item">
      <h6><strong>Region:</strong> {{ item.region }}</h6>
      <h6><strong>Capital:</strong> {{ item.capital }}</h6>
      <h6><strong>Population:</strong> {{ item.population }}</h6>
      <h6><strong>Flag: </strong><img :src="`${item.flag}`" id="flag" /></h6>
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
      name: "",
      country: "",
    };
  },

 
  methods: {
    getCountryByName() {
      this.$http
        .get(`${process.env.VUE_APP_ENDPOINT2}/api/${this.name}`)
        .then((response) => {
          this.country = response.data;
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
.widgetcountry {
  position: relative;
  width: auto;
  height: auto;
  max-height: 350px;
  max-width: 400px;
  border-radius: 20px;
  padding: 40px;
  box-shadow: 5px 5px black;
  box-sizing: border-box;
  background: rgb(122, 221, 122);
  /* box-shadow: 14px 14px 20px #cbced1, -14px -14px 20px white; */
  overflow: auto;
}

#flag {
  height: 50px;
  width: 50px;
}
</style>