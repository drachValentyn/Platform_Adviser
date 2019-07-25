<template>
    <div class="main-content">
        <router-link to="/quiz" class="back-link home-link">SAVE CHANGES</router-link>
        <v-container>
            <div class="quiz">

                <div v-for="(question, index) in quiz.data" :key="index">
                    <!-- Hide all questions, show only the one with index === to current question index -->
                    <div>
                        <div class="question">
                            <p class="quiz-index">{{index+1}}/{{quiz.data.length}}</p>
                            <h3 class="question">{{ question.question }}</h3>
                        </div>
                        <div class="quiz-list">
                            <div v-for="(response, index2) in question.answers" :key="index2+'_'+index"
                                 class="quiz-item" :class="">

                                <label class="quiz-label">

                                    <input type="radio"
                                           :name="'index'+index"
                                           :value="response"
                                           @click="onClick(index2+'_'+index)"
                                           :checked="getClass(response)"
                                           v-model="userResponses[index]"
                                    >
                                    {{response.answer}}
                                </label>

                            </div>

                        </div>

                    </div>
                </div>

            </div>
        </v-container>
    </div>
</template>

<script>


    export default {
        name: "ChangeResult",
        data() {
            return {
                quiz: {},
                ids: {},
                userResponses: {},
                chosen: '',

            }
        },

        mounted(){
            this.$http.get('api/questions.json')
                .then(response => {
                        return response.json();
                    }, response => {
                        console.log(response)
                    }
                )
                .then(quiz => {
                    this.quiz = quiz;
                })

        } ,

        methods: {
            // handleInput(value) {
            //     let maxEl = this.userResponses;
            //     console.log(maxEl);
            //
            // },
            loadScore() {
                let storeResult = [];
                storeResult = this.$store.state.result;
                let intermResult = [];
                if (storeResult) {
                    let keys = Object.keys(storeResult);
                    for (let i = 0; i < keys.length; i++) {
                        let val = storeResult[keys[i]];
                        intermResult.push(val);
                    }
                }
                //console.log(intermResult);
                return intermResult;
            },
            getClass(prop) {
                let test = this.loadScore();
                console.log(test);
                if (Object.keys(test).length !== 0) {
                    for (let key in test) {
                        let value = test[key];

                        console.log(prop);
                        console.log(value);

                        if (prop.id_answer === value.id_answer) {
                            //console.log(prop);
                            return this.userResponses = prop;
                        }
                    }
                }

            },
            score() {
                let maxEl = this.userResponses;
                let idAnswer = [];
                let keys = Object.keys(maxEl);
                for (let i = 0; i < keys.length; i++) {
                    idAnswer = maxEl[keys[i]];
                    this.$store.state.changeResult = idAnswer.id_answer;
                }
                this.$store.state.result = maxEl;
                return maxEl;
            },
            onClick(index) {
                let maxEl = this.userResponses;
                console.log(maxEl)
                this.chosen = index;
            },
        },
        watch: {

        }

    }
</script>

<style scoped lang="scss">

    input[type="radio"]:checked+label{
        background: red;
    }

</style>
