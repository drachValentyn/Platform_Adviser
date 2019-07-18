import '@fortawesome/fontawesome-free/css/all.css'
import Vue from "vue";
import Vuetify from 'vuetify'
import VueResource from 'vue-resource'
import SocialSharing from 'vue-social-sharing'
import './plugins/vuetify'
import Components from "./components";
import App from "./App"
import router from './routes'
import store from './store'

import * as firebase from 'firebase'

import './assets/scss/main.scss'

import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { fas } from '@fortawesome/free-solid-svg-icons'


Vue.component('font-awesome-icon', FontAwesomeIcon); // Register component globally
library.add(fas); // Include needed icons.

Vue.use(VueResource);
Vue.use(Vuetify, {
  iconfont: 'faSvg'
});

Vue.use(SocialSharing);

Vue.config.productionTip = false;

Vue.http.options.root = 'http://craft-vue.local';

Vue.http.options.emulateJSON = true;
Vue.http.options.emulateHTTP = true;

new Vue({
  el: "#app",
  router,
  store,
  render: h => h(App),
  delimiters: ["${", "}"],
  created() {
    let firebaseConfig = {
      apiKey: "AIzaSyDekdG9ck9ClqFkPBcN3ao82f15mgFLyeI",
      authDomain: "calculator-75ac5.firebaseapp.com",
      databaseURL: "https://calculator-75ac5.firebaseio.com",
      projectId: "calculator-75ac5",
      storageBucket: "",
      messagingSenderId: "26592860978",
      appId: "1:26592860978:web:8583b7bba3b8ec26"
    };
    firebase.initializeApp(firebaseConfig);
  }
});
