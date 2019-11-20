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
import 'vuetify/src/stylus/app.styl'
import * as firebase from 'firebase'


import $ from 'jquery'
window.$ = window.jQuery = $


import router from './routes'
import ReadMore from 'vue-read-more';
import VuePageTransition from 'vue-page-transition'


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
Vue.use(ReadMore);
Vue.use(VuePageTransition)

Vue.config.productionTip = false;

//Vue.http.options.root = 'http://pla.craft';
// Vue.http.options.root = 'http://calculator.3339333.xyz';
Vue.http.options.root = 'https://platformadviser.pixelgrow.com/';
//Vue.http.options.root = 'http://craft-vue.local';

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
      apiKey: "AIzaSyBOS6xnjAWr7qksCyt6QCkVSD2M0035EPA",
      authDomain: "craft-calculator-f93f2.firebaseapp.com",
      databaseURL: "https://craft-calculator-f93f2.firebaseio.com",
      projectId: "craft-calculator-f93f2",
      storageBucket: "",
      messagingSenderId: "742797473601",
      appId: "1:742797473601:web:5cefbac50e84483623d3c0"
    };
    firebase.initializeApp(firebaseConfig);
  }
});

