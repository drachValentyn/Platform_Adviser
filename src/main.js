import Vue from "vue";
import './plugins/vuetify'
import Components from "./components";
import App from "./App"
import "./app.css";
import router from './routes'
import Vuetify from 'vuetify'
import 'vuetify/dist/vuetify.min.css' // Ensure you are using css-loader
import './plugins/vuetify'
import VueResource from 'vue-resource'
import ReadMore from 'vue-read-more';
// import VueCarousel from 'vue-carousel';
import jQuery from "jquery";
window.jQuery = window.$ = jQuery;
import * as firebase from 'firebase'
import store from './store'
import 'slick-carousel/slick/slick.scss';
import 'slick-carousel/slick/slick-theme.scss';
import './assets/scss/main.scss'


Vue.use(VueResource);
Vue.use(Vuetify);
Vue.use(ReadMore);
// Vue.use(VueCarousel);

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
