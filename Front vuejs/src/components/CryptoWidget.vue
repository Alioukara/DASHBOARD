<template>
  <div class="widgetromain">
    <div><img src="../assets/delete.png" alt="loupe"  @click=" deleteWidget" /></div><br>
    <h3>Cryptocurrency</h3>
    <label for="name">Are u looking for Crypto Name ?</label>
    <input
      name="name"
      type="text"
      v-model="searchCryptoName"
      placeholder="Search Crypto.."
      @input="filteredList()"
    />
    <label for="symbol">Are u looking abbreviation ?</label>
    <input
      name="symbol"
      type="text"
      v-model="searchCryptoSymbol"
      placeholder="Search Crypto.."
      @input="filteredList()"
    />
    <div v-for="item in resultSearch" :key="item" :crypto="item">
      <div>
        <img :src="`${item.image}`" id="logo" />
        <h1>{{ item.name }}</h1>
        <p>{{ item.symbol }}</p>
        <p>{{ item.current_price }} $</p>
        <p>{{ item.total_volume }} $</p>
      </div>
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
      list_of_crypto: [],
      searchCryptoName: "",
      searchCryptoSymbol: "",
      resultSearch: [],
    };
  },
  created() {
    this.getAllCrypto();
  },
  methods: {
    getAllCrypto() {
      var axios = require("axios");
      axios
        .get(process.env.VUE_APP_ENDPOINT3+"/api/crypto")
        .then((response) => {
          this.list_of_crypto = response.data;
        })
        .catch((error) => {
          console.log(error);
        });
    },
    filteredList() {
      if (this.searchCryptoName == "") {
        this.resultSearch = this.list_of_crypto.filter((list_of_crypto) => {
          return list_of_crypto.symbol
            .toLowerCase()
            .includes(this.searchCryptoSymbol.toLowerCase());
        });
      } else if (this.searchCryptoSymbol == "") {
        this.resultSearch = this.list_of_crypto.filter((list_of_crypto) => {
          return list_of_crypto.name
            .toLowerCase()
            .includes(this.searchCryptoName.toLowerCase());
        });
      } else {
        this.resultSearch = this.list_of_crypto.filter((list_of_crypto) => {
          return list_of_crypto.symbol
            .toLowerCase()
            .includes(this.searchCryptoSymbol.toLowerCase());
        });
        this.resultSearch = this.resultSearch.filter((resultSearch) => {
          return resultSearch.name
            .toLowerCase()
            .includes(this.searchCryptoName.toLowerCase());
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
.widgetromain {
  
  position: relative;
  width: auto;
  height: auto;
  max-height: 250px;
  max-width: 400px;
  border-radius: 20px;
  padding: 40px;
  box-shadow: 5px 5px black;
  box-sizing: border-box;
  background: rgb(182, 175, 175);
  /* box-shadow: 14px 14px 20px #cbced1, -14px -14px 20px white; */
  overflow: auto;
}

#logo {
  height: 50px;
  width: 50px;
  margin-right: 10px;
}

div {
  display: inline-block;
}
</style>
