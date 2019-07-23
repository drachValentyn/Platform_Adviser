import Vue from 'vue'
import Vuex from 'vuex'
import linkResult from './linkResult'
import shared from './shared'
//import VueResource from 'vue-resource'

Vue.use(Vuex);
//Vue.use(VueResource);

export default new Vuex.Store({
    state: {
        result: []
    },
    modules: {
        linkResult,
        shared
    }
})
