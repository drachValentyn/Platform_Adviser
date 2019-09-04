import '@fortawesome/fontawesome-free/css/all.css'
import Vue from "vue";
import Vuetify from 'vuetify'
import VueResource from 'vue-resource'
import SocialSharing from 'vue-social-sharing'
import './plugins/vuetify'
import Components from "./components";
import App from "./App"
import "./app.css";
import store from './store'


import $ from 'jquery'
window.$ = window.jQuery = $


import router from './routes'
import ReadMore from 'vue-read-more';

import * as firebase from 'firebase'

import 'slick-carousel/slick/slick.scss';
import 'slick-carousel/slick/slick-theme.scss';
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
Vue.use(Vuetify);
Vue.use(ReadMore);

Vue.config.productionTip = false;

Vue.http.options.root = 'http://pla.craft';
//Vue.http.options.root = 'http://calculator.3339333.xyz';

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
      apiKey: "AIzaSyAzHUB3iRTcDUwsADqyxhuXEImi3D1DIfs",
      authDomain: "craft-calculator-498a8.firebaseapp.com",
      databaseURL: "https://craft-calculator-498a8.firebaseio.com",
      projectId: "craft-calculator-498a8",
      storageBucket: "",
      messagingSenderId: "943433845943",
      appId: "1:943433845943:web:cfc85fe2abd25abf"
    };
    firebase.initializeApp(firebaseConfig);
  }
});

