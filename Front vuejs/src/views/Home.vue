<template>

  <div class="wrapper" v-if="islogged">
     <button class="btn btn-primary btn-lg mr-sm-2 col-md-12 text-center" type="button" @click="redirect">Add Services To My Dashboard</button>

    
    <component
    
      v-for="widget in userwidgets"
      :key="widget.id"
      :is="widget.names"
      :widget="widget"
      @removeWidget="removeWidget"
      
      
    ></component>
  </div>
  <div class="notlogged" v-else>
    <h6>
      Multilingual Dictionary, Currency Convertor, Worldwide Countries'
      informations...:
    </h6>
    <h1>Get all services in one Dashboard</h1>
    <router-link
      to="/signin"
      class="btn btn-success btn-lg mr-sm-2 col-md-12 text-center"
      >Try!</router-link
    >
  </div>
</template>

<script>
import NbaWidget from "../components/NbaWidget.vue";
import DictCard from "../components/DictCard.vue";
import TimeCard from "../components/TimeCard.vue";
import CryptoWidget from "../components/CryptoWidget.vue";
import ConvertWidget from "../components/ConvertWidget.vue";
import CountryWidget from "../components/CountryWidget.vue";
import MeteoWidget from "../components/MeteoWidget.vue";

export default {
  data() {
    return {
      islogged: "",
      userwidgets: [],
    };
  },

  components: {
    NbaWidget,
    DictCard,
    TimeCard,
    CryptoWidget,
    ConvertWidget,
    CountryWidget,
    MeteoWidget,
  },
  created() {
    this.islogged = this.$cookies.get("token");
    this.getWidgets();
  },
  methods: {
    getWidgets() {
      this.$http
        .get(process.env.VUE_APP_ENDPOINT+"/api/widgets", {
          headers: {
            Authorization: "Bearer " + this.$cookies.get("token"),
          },
        })
        .then((response) => {
          this.userwidgets = response.data;
          
         
        })
        .catch((error) => {
          console.log(error);
        });
    },
     
    
    redirect() {
      this.$router.push("/selectwidgets");
    },
    removeWidget(id) {
      this.userwidgets = this.userwidgets.filter(
        (n) => n.id !== id
      )}
    
  }
}

</script>

<style scoped>
.wrapper {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-gap: 10px;
  grid-auto-rows: minmax(100px, auto);
  margin-top: 100px;
}

.dictcard {
  grid-column: 1;
  grid-row: 1;
}

.nbawidget {
  grid-column: 2;
  grid-row: 1;
}

.timecard {
  grid-column: 3;
  grid-row: 1;
}

.cryptowidget {
  grid-column: 4;
  grid-row: 1;
}

.convertwidget {
  grid-column: 2;
  grid-row: 2;
}

.countrywidget {
  grid-column: 1;
}

.meteowidget {
  grid-column: 3;
  grid-row: 2;
}
.notlogged {
  margin-left: 300px;
  margin-top: 200px;

  /* background-image: url("../assets/back.jpg"); */
}
</style>
