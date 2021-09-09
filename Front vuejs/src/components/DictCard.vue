<template>
  <div class="Create-Comment">
    <div><img src="../assets/delete.png" alt="loupe"  @click=" deleteWidget" /></div>
    <h3>
       Dictionary
      <img src="https://img.icons8.com/color/48/000000/dictionary.png" />
    </h3>
    <form @submit.prevent="getWord">
     
      
      <label>Choose a language:</label>
      <select name="language" v-model="language">
        <option value="en">English</option>
        <option value="fr">French</option>
        <option value="es">Spanish</option>
        <option value="de">German</option>
      </select>
      <input type="text" v-model="word" /><br />
      <button type="submit">Search</button>
      <br />
    </form>
    <p v-if="word">Word: {{ word }}</p>
    <p v-if="phonetic">Phonetic: {{ phonetic }}</p>
    <p v-if="origin">Origin: {{ origin }}</p>
    <div v-if="meanings">
      <p>Definitions</p>
      <div v-for="meaning in meanings" :key="meaning">
        <div v-for="def in meaning.definitions" :key="def">
          <p>{{ def.definition }}</p>
          -------------------------------------------
        </div>
        
      </div>
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
   
      language: "",
      word: "",
      phonetic: null,
      meanings: null,
      origin: null,
      definition: [],
    };
  },
  methods: {
    getWord() {
      this.$http
        .get(
          `${process.env.VUE_APP_ENDPOINT4}/api/${this.language}/${this.word}`
        )
        .then((response) => {
          this.word = response.data[0].word;
          this.phonetic = response.data[0].phonetic;
          this.meanings = response.data[0].meanings;
          this.origin = response.data[0].origin;
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
}
   
    
  }
</script>

<style>
* {
  margin-inline-start: 5px;
}
.Create-Comment {
  position: relative;
  width: 350px;
  height: auto;
  max-height: 500px;
  border-radius: 20px;
  padding: 40px;
  box-shadow: 5px 5px black;
  box-sizing: border-box;
  background: #739ebe;
  /* box-shadow: 14px 14px 20px #cbced1, -14px -14px 20px white; */
  overflow: auto;
}
</style>
