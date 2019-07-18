import * as firebase from 'firebase'
import Vue from 'vue'
import VueResource from 'vue-resource'

Vue.use(VueResource);

class LinkResult {
    constructor(result) {
        this.resultQuiz = result;
    }
}

class ShareResult {
    constructor(result, id = null) {
        this.resultQuiz = result;
        this.id = id;
    }
}

export default {
    state: {
        resultQuiz: [],
        shareInfo: []
    },
    mutations: {
        createResult(state, payload) {
            state.resultQuiz.push(payload);
        },
        loadResult(state, payload){
            state.resultQuiz = payload;
        },
        loadShareInfo(state, payload){
            return state.shareInfo = payload;
        }
    },
    actions: {
        async createResult({commit}, payload) {
            commit('clearError');
            commit('setLoading', true);

            try {
                const newResult = new LinkResult(payload.resultQuiz);

                const resultValue = await firebase.database().ref('results').push(newResult);

                //this.key = fbValue.key;
                console.log(resultValue.key);

                commit('setLoading', false);

                commit('createResult', {
                    newResult,
                    id: resultValue.key
                });
            } catch (error) {
                commit('setError',error.message);
                commit('setLoading', false);
                throw error
            }

        },

        async loadResults({commit}) {
            commit('clearError');
            commit('setLoading', true);

            const resultAds = [];

            try {

                 const resVal = await firebase.database().ref('results').once('value');
                 const resultArr = resVal.val();

                Object.keys(resultArr).forEach(key => {
                    const link = resultArr[key];
                    //console.log(key);
                    resultAds.push(
                        new ShareResult(link.resultQuiz, key)
                    )
                });

                //console.log(resultAds);

                commit('loadResult', resultAds);
                commit('setLoading', false);

            } catch (error) {
                commit(error.message);
                commit('setLoading', false);
                throw error
            }
        },

        loadShareInfo({commit}) {
            commit('clearError');
            commit('setLoading', true);
            try {
               Vue.http.get('api/thank-you.json')
                      .then(response => {
                              return response.json();
                         }, response => {
                             console.log(response)
                         }
                     )
                     .then(results => {
                         this.shareInfo = results.data;
                         //console.log(results);
                         commit('loadShareInfo', this.shareInfo);
                         commit('setLoading', false);
                     });

            } catch (error) {
                commit(error.message);
                commit('setLoading', false);
                throw error
            }
        },

    },
    getters: {
        resultQuiz(state) {
            return state.resultQuiz
        },
        shareInfo(state) {
            return state.shareInfo
        },
        ResultById(state) {
            return resultId => {
                return state.resultQuiz.find( res => res.id === resultId)
            }
        }
    }
}
