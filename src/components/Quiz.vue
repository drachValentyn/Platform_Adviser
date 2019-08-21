<template>
    <div class="main-content">
        <router-link to="/" class="back-link result-link">Back to home</router-link>
        <v-container>
            <div class="quiz">
                <div v-for="(question, index) in quiz.data" :key="index">
                        <div v-show="index === questionIndex">
                            <div v-if="question.question_type === 'questionsList'" >

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
                                               @change="prev(index2)"
                                               v-on:click="onClick(index2, response, question.question_id)"
                                               v-model="userResponses[index]"
                                            >

                                            {{response.answer}}
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div v-else-if="question.question_type === 'blockOfQuestions'">
                                <div class="question">
                                    <p class="quiz-index">{{index+1}}/{{quiz.data.length}}</p>

                                    <div v-for="(obj, o_index) in userResponses" :key="o_index">

                                        <div v-if="obj.question_id === question.prelead_question[0].p_q_id">


                                            <h3 class="question">
                                                {{obj.dependent_question[0].d_q_title}}
                                            </h3>


                                            <div v-for="(dependent_question, dq_index) in dependent_quiz.data" :key="dq_index"
                                                 v-if="dependent_question.question_id === obj.dependent_question[0].d_q_id" class="quiz-list">

                                                <div v-for="(response2, index3) in dependent_question.answers" :key="index3"
                                                     class="quiz-item" :class="{ 'chosen': chosen === index3 }">

                                                    <label class="quiz-label">
                                                        <input type="radio"
                                                               v-bind:value="response2"
                                                               name="index"
                                                               @change="prev(index3)"
                                                               v-on:click="onClick(index3, response2, dependent_question.question_id)"
                                                               v-model="userResponses[index]"
                                                        >

                                                        {{response2.answer}}
                                                    </label>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                </div>
            </div>
            <footers></footers>
        </v-container>

    </div>
</template>

<script>
  import Footer from './Footer'
    /* eslint-disable */
    export default {
      components: {
        footers: Footer,
      },
        data() {
            return {
                quiz: {},
                dependent_quiz: {},
                questionIndex: 0,
                userResponses: Array(),
                chosen: '',
                currentIndex: '',
                preleadQuestion: '',
                dependentQuestion: '',
            }
        },

        mounted: function () {
            this.$http.get('api/questions.json')
                .then(response => {
                        return response.json();
                    }, response => {
                        // console.log(response)
                    }
                )
                .then(quiz => {
                    this.quiz = quiz;
                });
            this.$http.get('api/dependent-questions.json')
                .then(response => {
                            return response.json();
                        }, response => {
                            // console.log(response)
                        }
                    )
                        .then(quiz => {
                            this.dependent_quiz = quiz;
                        })
        },

        methods: {
            prev() {
                setTimeout(function () {
                    // console.log(this.userResponses[0].id_answer);
                    this.next()
                }.bind(this), 300)
            },

            next() {
                console.log(this.userResponses);

                this.questionIndex++;
                this.onClick();
                if (this.questionIndex === this.quiz.data.length) {
                    this.score();  //---------------------------------------//      push to Result
                    this.$router.push('/result');
                    //this.$router.push('/change-result');
                }
            },

            onClick(index, response, id) {
                this.chosen = index;
                if (response) {
                    response.question_id = id;
                }
            },

            score() {
                let maxEl = this.userResponses;
                this.$store.state.result = maxEl;
                return maxEl;
            },
        },
    }

</script>

<style scoped>

</style>
