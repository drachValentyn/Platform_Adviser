<template>
    <div class="main-content">
        <router-link to="/" class="home-link">Back to home</router-link>
        <v-container>
            <div class="quiz">

                <div v-for="(question, index) in quiz.data" :key="index">
                    <!-- Hide all questions, show only the one with index === to current question index -->
                    <div v-show="index === questionIndex">
                        <div class="question">
                            <p class="quiz-index">{{index+1}}/{{quiz.data.length}}</p>
                            <h3 class="question">{{ question.question }}</h3>
                        </div>
                        <div class="quiz-list">
                            <!-- for each response of the current question -->
                            <div v-for="(response, index2) in question.answers" :key="index2"
                                 class="quiz-item" :class="{ 'chosen': chosen === index2 }">

                                <label class="quiz-label">
                                    <input type="radio"
                                           v-bind:value="response"
                                           name="index"
                                           @change="prev()"
                                           v-on:click="onClick(index2)"
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
    /* eslint-disable */
    export default {
        data() {
            return {
                quiz: {},
                questionIndex: 0,
                userResponses: Array(),
                chosen: '',
            }
        },

        mounted: function () {
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
        },
        methods: {
            prev() {

                setTimeout(function () {
                    //console.log(this.userResponses[0].id_answer);
                    this.next()
                }.bind(this), 300)

            },
            next() {
                this.questionIndex++;
                this.onClick();
                if (this.questionIndex === this.quiz.data.length) {
                    this.score();  //---------------------------------------//      push to Result
                    this.$router.push('/result');
                    //this.$router.push('/change-result');
                }
            },

            onClick(index) {
                this.chosen = index;
            },

            score() {
                let maxEl = this.userResponses;
                let idAnswer = [];
                let keys = Object.keys(maxEl);
                for (let i = 0; i < keys.length; i++) {
                    idAnswer = maxEl[keys[i]];
                    this.$store.state.changeResult = idAnswer.id_answer;
                }

                //console.log(typeof  idAnswer);
                this.$store.state.result = maxEl;
                return maxEl;

            },
        },


    }

</script>

<style scoped>
    [v-cloak] {
        display: none;
    }

    label {
        cursor: pointer;
    }
</style>
