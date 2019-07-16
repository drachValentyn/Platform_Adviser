import Vue from 'vue'
import Vuex from 'vuex'
import linkResult from './linkResult'
import shared from './shared'


Vue.use(Vuex);

export default new Vuex.Store({
    state: {
        result: []
    },
    modules: {
        linkResult,
        shared
    }
})
