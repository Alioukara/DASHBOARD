
<template>
  <div class="widgetromain2">
    <div><img src="../assets/delete.png" alt="loupe"  @click=" deleteWidget" /></div>
    <h3>Currency Converter</h3>
    <div class="container">
      <div class="container-one">
        <select
          name="first-currency"
          id="first-currency"
          @change="calculateResults()"
          v-model="currency_one"
        >
          <option value="AED">AED</option>
          <option value="ARS">ARS</option>
          <option value="AUD">AUD</option>
          <option value="BGN">BGN</option>
          <option value="BRL">BRL</option>
          <option value="BSD">BSD</option>
          <option value="CAD">CAD</option>
          <option value="CHF">CHF</option>
          <option value="CLP">CLP</option>
          <option value="CNY">CNY</option>
          <option value="COP">COP</option>
          <option value="CZK">CZK</option>
          <option value="DKK">DKK</option>
          <option value="DOP">DOP</option>
          <option value="EGP">EGP</option>
          <option value="EUR">EUR</option>
          <option value="FJD">FJD</option>
          <option value="GBP">GBP</option>
          <option value="GTQ">GTQ</option>
          <option value="HKD">HKD</option>
          <option value="HRK">HRK</option>
          <option value="HUF">HUF</option>
          <option value="IDR">IDR</option>
          <option value="ILS">ILS</option>
          <option value="INR">INR</option>
          <option value="ISK">ISK</option>
          <option value="JPY">JPY</option>
          <option value="KRW">KRW</option>
          <option value="KZT">KZT</option>
          <option value="MXN">MXN</option>
          <option value="MYR">MYR</option>
          <option value="NOK">NOK</option>
          <option value="NZD">NZD</option>
          <option value="PAB">PAB</option>
          <option value="PEN">PEN</option>
          <option value="PHP">PHP</option>
          <option value="PKR">PKR</option>
          <option value="PLN">PLN</option>
          <option value="PYG">PYG</option>
          <option value="RON">RON</option>
          <option value="RUB">RUB</option>
          <option value="SAR">SAR</option>
          <option value="SEK">SEK</option>
          <option value="SGD">SGD</option>
          <option value="THB">THB</option>
          <option value="TRY">TRY</option>
          <option value="TWD">TWD</option>
          <option value="UAH">UAH</option>
          <option value="USD">USD</option>
          <option value="UYU">UYU</option>
          <option value="VND">VND</option>
          <option value="ZAR">ZAR</option>
        </select>
        <input
          type="number"
          name="input-one"
          id="input-one"
          v-model="amountOne"
          @input="calculateResults()"
        />
      </div>
      <div class="container-two">
        <button @click="switchValues()">Switch</button>
        <h4 id="baseValue">
          1 {{ currency_one }} = {{ rate }} {{ currency_two }}
        </h4>
      </div>
      <div class="container-there">
        <select
          id="currency-two"
          @change="calculateResults()"
          v-model="currency_two"
        >
          <option value="AED">AED</option>
          <option value="ARS">ARS</option>
          <option value="AUD">AUD</option>
          <option value="BGN">BGN</option>
          <option value="BRL">BRL</option>
          <option value="BSD">BSD</option>
          <option value="CAD">CAD</option>
          <option value="CHF">CHF</option>
          <option value="CLP">CLP</option>
          <option value="CNY">CNY</option>
          <option value="COP">COP</option>
          <option value="CZK">CZK</option>
          <option value="DKK">DKK</option>
          <option value="DOP">DOP</option>
          <option value="EGP">EGP</option>
          <option value="EUR">EUR</option>
          <option value="FJD">FJD</option>
          <option value="GBP">GBP</option>
          <option value="GTQ">GTQ</option>
          <option value="HKD">HKD</option>
          <option value="HRK">HRK</option>
          <option value="HUF">HUF</option>
          <option value="IDR">IDR</option>
          <option value="ILS">ILS</option>
          <option value="INR">INR</option>
          <option value="ISK">ISK</option>
          <option value="JPY">JPY</option>
          <option value="KRW">KRW</option>
          <option value="KZT">KZT</option>
          <option value="MXN">MXN</option>
          <option value="MYR">MYR</option>
          <option value="NOK">NOK</option>
          <option value="NZD">NZD</option>
          <option value="PAB">PAB</option>
          <option value="PEN">PEN</option>
          <option value="PHP">PHP</option>
          <option value="PKR">PKR</option>
          <option value="PLN">PLN</option>
          <option value="PYG">PYG</option>
          <option value="RON">RON</option>
          <option value="RUB">RUB</option>
          <option value="SAR">SAR</option>
          <option value="SEK">SEK</option>
          <option value="SGD">SGD</option>
          <option value="THB">THB</option>
          <option value="TRY">TRY</option>
          <option value="TWD">TWD</option>
          <option value="UAH">UAH</option>
          <option value="USD">USD</option>
          <option value="UYU">UYU</option>
          <option value="VND">VND</option>
          <option value="ZAR">ZAR</option>
        </select>

        <input
          type="number"
          id="amount-two"
          placeholder="0"
          v-model="amountTwo"
          disabled
        />
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
      data: [],
      currency_one: "EUR",
      currency_two: "USD",
      rate: "",
      amountOne: 1,
      amountTwo: 0,
    };
  },
  methods: {
    calculateResults() {
      fetch(process.env.VUE_APP_ENDPOINT1+`/api/convert/${this.currency_one}`)
        .then((res) => res.json())
        .then((data) => {
          this.data = data;
          this.rate = data.conversion_rates[this.currency_two];
          this.amountTwo = this.amountOne * this.rate.toFixed(2);
        });
    },
    switchValues() {
      const temp = this.currency_one;
      this.currency_one = this.currency_two;
      this.currency_two = temp;
      this.calculateResults();
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
  mounted() {
    this.calculateResults();
  },
  
};
</script>

<style scoped>
.widgetromain2 {
  position: relative;
  width: auto;
  height: auto;
  max-height: 250px;
  max-width: 400px;
  border-radius: 20px;
  padding: 40px;
  box-shadow: 5px 5px black;
  box-sizing: border-box;
  background: rgb(241, 112, 140);
  /* box-shadow: 14px 14px 20px #cbced1, -14px -14px 20px white; */
  overflow: auto;
}
</style>
