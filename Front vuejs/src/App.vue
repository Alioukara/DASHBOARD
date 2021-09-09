<template>
  <div>
    <NavBar
      :logged_in="logged_in"
      :username="username"
      @logout="handleLogout"
    />
    <div id="nav"></div>

    <router-view @login="handleLogin" />
  </div>
</template>
<script>
import NavBar from "./components/NavBar.vue";

export default {
  data() {
    return {
      logged_in: false,
      email: "",
      username: "",
    };
  },
  components: {
    NavBar,
  },
  methods: {
    handleLogin(email) {
      this.logged_in = true;
      this.email = email;
    },
    handleLogout() {
      this.logged_in = false;
    },
  },
  created() {
    if (this.$cookies.get("token")) {
      this.logged_in = true;
    }
  },
};
</script>


<style>

</style>
