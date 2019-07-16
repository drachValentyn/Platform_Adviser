import * as firebase from 'firebase'

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
    },
    mutations: {
        addResult(state, payload) {
            state.resultQuiz.push(payload);
        },
        loadResult(state, payload){
            state.resultQuiz = payload;
        }
    },
    actions: {
        async addResult({commit}, payload) {
            commit('clearError');
            commit('setLoading', true);

            try {
                const newResult = new LinkResult(payload.resultQuiz);

                const resultValue = await firebase.database().ref('results').push(newResult);

                //this.key = fbValue.key;
                //console.log(this.key);

                commit('setLoading', false);

                commit('addResult', {
                    ...newResult,
                    id: resultValue.key
                });
            } catch (error) {
                commit(error.message);
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

    },
    getters: {
        resultQuiz(state) {
            return state.resultQuiz
        },
        ResultById(state) {
            return resultId => {
                return state.resultQuiz.find( res => res.id === resultId)
            }
        }
    }
}
