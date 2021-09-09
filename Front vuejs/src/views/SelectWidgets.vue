<template>
  <div class="wrapper" v-if="islogged">
    <button class="btn btn-warning btn-lg mr-sm-2 col-md-12 text-center" type="button" @click="redirect">Go To My Dashboard</button>
    <h1>SELECT YOUR SERVICES</h1><br />
    <hr />
    <div class="dictcard">
      <button class="btn btn-primary" type="button" @click="store('DictCard')">
        DictCard
      </button>
    </div>
    <div class="nbawidget">
      <button class="btn btn-success" type="button" @click="store('NbaWidget')">
        NbaWidget
      </button>
    </div>
    <div class="timecard">
      <button class="btn btn-primary" type="button" @click="store('TimeCard')">
        TimeCard
      </button>
    </div>
    <div class="cryptowidget">
      <button
        class="btn btn-success"
        type="button"
        @click="store('CryptoWidget')"
      >
        CryptoWidget
      </button>
    </div>
    <div class="convertwidget">
      <button
        class="btn btn-primary"
        type="button"
        @click="store('ConvertWidget')"
      >
        ConvertWidget
      </button>
    </div>
    <div class="countrywidget">
      <button
        class="btn btn-success"
        type="button"
        @click="store('CountryWidget')"
      >
        CountryWidget
      </button>
    </div>
        <div class="countrywidget">
      <button
        class="btn btn-primary"
        type="button"
        @click="store('MeteoWidget')"
      >
        MeteoWidget
      </button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      islogged: "",
      listofwidgets: [],
    };
  },

  components: {},
  created() {
    this.islogged = this.$cookies.get("token");
  },
  methods: {
    store(name) {
      this.$http
        .post(
          process.env.VUE_APP_ENDPOINT+"/api/createwidget",
          {
            names: name,
          },
          {
            headers: {
              Authorization: "Bearer " + this.$cookies.get("token"),
            },
          }
        )
        .then((response) => {
          
          
          console.log(response.data[0].id);
          // this.$emit("widgetid", response.data[0].id);
          
          this.$router.push({
          
          query: {
          id: response.data[0].id,
        },
      });
        
        })
        .catch(function(error) {
          console.log(error);
          
        });
    },
    redirect() {
      this.$router.push("/");
    }
  },
};
</script>

<style>
.wrapper {
  margin-top: 200px;
}
option {
  font-size: 2em;
  font-weight: bold;
}
</style>
