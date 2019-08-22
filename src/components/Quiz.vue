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

                                        <answers
                                            :answer_response="response"
                                            :answer_index="index2"
                                            :answer_question="question"
                                            :chosen="chosen"
                                            :userResponses="userResponses"
                                            :index="index"
                                            :onClick="onClick"
                                            :prev="prev"
                                            :next="next"
                                        />
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

                                                    <answers
                                                        :answer_response="response2"
                                                        :answer_index="index3"
                                                        :answer_question="dependent_question"
                                                        :chosen="chosen"
                                                        :userResponses="userResponses"
                                                        :index="index"
                                                        :onClick="onClick"
                                                        :prev="prev"
                                                        :next="next"
                                                    />

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
  import Answers from './Answers'
    /* eslint-disable */
    export default {
      components: {
        answers: Answers,
        footers: Footer,
      },
        data() {
            return {
                quiz: {},
                dependent_quiz: {},
                questionIndex: 0,
                userResponses: Array(),
                chosen: '',
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
                // console.log(this.userResponses);
                setTimeout(function () {
                    // console.log(this.userResponses[0].id_answer);
                    this.next()
                }.bind(this), 300)
            },

            next() {
                console.log('next RESPONSE CALLED');
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
