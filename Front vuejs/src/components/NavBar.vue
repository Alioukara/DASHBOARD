<template>
  <nav class="navbar fixed-top navbar-dark bg-dark">
    <div v-if="!logged_in">
      <router-link to="/signin" class="btn btn-outline-success mr-sm-2"
        >Login</router-link
      >

      <router-link to="/signup" class="btn btn-outline-primary my-2 my-sm-0"
        >Signup</router-link
      >
    </div>

    <div v-else>
      <button @click="logOut()" class="btn btn-outline-warning">Log out</button>
    </div>
  </nav>
</template>

<script>
export default {
  name: "NavBar",
  emits: ["logout"],
  props: ["logged_in", "username"],
  data() {
    return {};
  },
  methods: {
    logOut() {
      this.$cookies.remove("token");
      this.$toast.error("Vous etes déconnecté !");
      this.$emit("logout");
      this.$router.push("/signin");
    },
  },
};
</script>

<style scoped></style>
