import { createRouter, createWebHistory } from "vue-router";
import Home from "../views/Home.vue";

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/about",
    name: "About",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () =>
      import(/* webpackChunkName: "about" */ "../views/About.vue"),
  },
  {
    path: "/signup",
    name: "Signup",

    component: () =>
      import(/* webpackChunkName: "about" */ "../views/Signup.vue"),
  },
  {
    path: "/signin",
    name: "Signin",

    component: () =>
      import(/* webpackChunkName: "about" */ "../views/Signin.vue"),
  },
  {
    path: "/selectwidgets",
    name: "SelectWidgets.",

    component: () =>
      import(/* webpackChunkName: "about" */ "../views/SelectWidgets.vue"),
  },
];

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
});

export default router;
