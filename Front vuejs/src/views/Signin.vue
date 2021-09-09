<template>
  <div class="container">
    <img src="../assets/go-back.png" alt="" @click="redirect"><br><hr>
    <div class="brand-logo"></div>
    <div class="brand-title">SIGN IN</div>
    <form class="inputs" @submit.prevent="loginUser">
      <label>EMAIL</label>
      <input type="email" placeholder="example@test.com" v-model="email" />
      <label>PASSWORD</label>
      <input type="password" placeholder="your password" v-model="password" />
      <button type="submit">LOGIN</button>
    </form>
  </div>
</template>

<script>
export default {
  name: "signin",
  data() {
    return {
      email: "",
      password: "",
    };
  },

  methods: {
    loginUser() {
      var axios = require("axios");
      var data = JSON.stringify({
        email: this.email,
        password: this.password,
      });

      var config = {
        method: "post",
        url: process.env.VUE_APP_ENDPOINT + "/api/login",
        headers: {
          "Content-Type": "application/json",
          Accept: "*/*",
        },
        data: data,
      };

      axios(config)
        .then((response) => {
          console.log(response.data);
          let token = response.data.token;

          this.$cookies.set("token", token);

          this.$toast.success("Connexion réussie!");
          this.$emit("login", this.email);
          this.$router.push("/");
        })
        .catch((error) => {
          console.log(error);
          this.$toast.error("Connexion échouée");
        });
    },
     redirect() {
      this.$router.push("/");
    }
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;900&display=swap");

body {
  margin: 0;
  width: 100vw;
  height: 100vh;
  background: #404344;
  display: flex;
  align-items: center;
  text-align: center;
  justify-content: center;
  place-items: center;
  overflow: hidden;
  font-family: poppins;
}

.container {
  margin-left: 200%;
  margin-top: 150px;
  width: 350px;
  height: 500px;
  border-radius: 20px;
  padding: 40px;
  box-sizing: border-box;
  background: #ecf0f3;
  /* box-shadow: 14px 14px 20px #cbced1, -14px -14px 20px white; */
}

/* .brand-logo {
  height: 100px;
  width: 100px;
  background: url("https://img.icons8.com/fluency/50/000000/sign-in-form-password.png");

  margin: auto;
  border-radius: 50%;
  box-sizing: border-box;
  box-shadow: 7px 7px 10px #cbced1, -7px -7px 10px white;
} */

.brand-title {
  margin-left: 70px;;
  font-weight: 900;
  font-size: 1.8rem;
  color: #1da1f2;
  letter-spacing: 1px;
}

.inputs {
  text-align: left;
  margin-top: 30px;
}

label,
input,
button {
  display: block;
  width: 100%;
  padding: 0;
  border: none;
  outline: none;
  box-sizing: border-box;
}

label {
  margin-bottom: 4px;
}

label:nth-of-type(2) {
  margin-top: 12px;
}

input::placeholder {
  color: gray;
}

input {
  background: #ecf0f3;
  padding: 10px;
  padding-left: 20px;
  height: 50px;
  font-size: 14px;
  border-radius: 50px;
  box-shadow: inset 6px 6px 6px #cbced1, inset -6px -6px 6px white;
}

button {
  margin-top: 20px;
  background: #1da1f2;
  height: 40px;
  border-radius: 20px;
  cursor: pointer;
  font-weight: 900;
  box-shadow: 6px 6px 6px #cbced1, -6px -6px 6px white;
  transition: 0.5s;
}

button:hover {
  box-shadow: none;
}

a {
  position: absolute;
  font-size: 8px;
  bottom: 4px;
  right: 4px;
  text-decoration: none;
  color: black;
  background: yellow;
  border-radius: 10px;
  padding: 2px;
}
</style>
