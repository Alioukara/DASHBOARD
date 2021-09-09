import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import Toaster from "@meforma/vue-toaster";
import VueCookies from "vue3-cookies";
import axios from "axios";
import vaxios from "vue-axios";

createApp(App)
  .use(router)
  .use(Toaster)
  .use(VueCookies)
  .use(vaxios, axios)
  .mount("#app");
