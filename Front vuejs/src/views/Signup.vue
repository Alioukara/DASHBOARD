<template>
  <div class="container">
    <div class="brand-logo"></div>
    <div class="brand-title">SIGN UP</div>
    <form class="inputs" @submit.prevent="addUser">
      <label>Username</label>
      <input
        id="username"
        name="username"
        type="text"
        placeholder="username"
        v-model="newUser.username"
      />

      <label>Email</label>
      <input
        id="Email"
        name="Email"
        placeholder="example@test.com"
        type="text"
        v-model="newUser.email"
      />

      <label>Password</label>
      <input
        id="password"
        name="password"
        type="password"
        placeholder="enter a password"
        v-model="newUser.password"
      />

      <label>Confirm the password</label>
      <input
        id="confirm_password"
        name="confirm_password"
        placeholder="confirm the password"
        type="password"
      />

      <button type="submit">CREATE</button>
    </form>
  </div>
</template>

<script>
// import axios from "axios";
export default {
  name: "Create-User",
  data: function () {
    return {
      newUser: {
        username: "",
        email: "",
        password: "",
      },
    };
  },
  methods: {
    addUser: function () {
         var axios = require('axios');
var data =  {"email": this.newUser.email,
          "password": this.newUser.password,
}

var config = {
  method: 'post',
  url: process.env.VUE_APP_ENDPOINT + "/api/register",
  headers: { },
  data : data,
  
};
console.log(data)
axios(config)
.then((response) => {
  this.$toast.success("User Created!");
  console.log(JSON.stringify(response.data));
  
})
.catch(function (error) {
  
  console.log(error);
});
    
    },
 
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;900&display=swap");
body {
  margin: 0;
  width: 100vw;
  height: 90vh;
  background-color: #404344; ;
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
  position: relative;
  width: 350px;
  height: 600px;
  border-radius: 20px;
  padding: 40px;
  box-sizing: border-box;
  background: #ecf0f3;
  /* box-shadow: 14px 14px 20px #cbced1, -14px -14px 20px white; */
}


.brand-title {
  margin-top: 10px;
  margin-left: 70px;
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
