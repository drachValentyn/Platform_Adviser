<template>
    <div class="main-content">
        <router-link to="/" class="back-link result-link">Back to home</router-link>
        <v-container>
            <div class="quiz">
<!--Do not show questions under blocks in a flow !!!-->
                <div v-for="(question, index) in quiz.data" :key="index">
                    <!-- Hide all questions, show only the one with index === to current question index -->
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
                            <div v-else-if="question.question_type === 'blockOfQuestions'" >
                                <div class="question">
                                    <p class="quiz-index">{{index+1}}/{{quiz.data.length}}</p>

                                    <!--<div v-for="(item, i_index) in quiz.data" :key="i_index">-->
                                        <!--<div v-if="item.question_id === question.prelead_question[0].p_q_id" >-->

                                            <!--<h3 :set="preleadQuestion=item.answers[0].dependent_question[0]" class="question">-->
                                                <!--{{item.answers[0].dependent_question[0].d_q_title}}-->
                                            <!--</h3>-->

                                        <!--</div>-->
                                    <!--</div>-->
                                    <div v-for="(item, i_index) in quiz.data" :key="i_index">
                                        <div v-if="item.question_id === question.prelead_question[0].p_q_id" >
                                            <div v-for="(obj, o_index) in userResponses" :key="o_index">
                                                <div v-if="obj.question_id === question.prelead_question[0].p_q_id" >

                                                    <h3 :set="preleadQuestion=obj.dependent_question[0]" class="question">
                                                        {{preleadQuestion.d_q_title}}
                                                    </h3>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <div v-for="(question2, dq_index) in dependent_quiz.data" :key="dq_index"
                                     v-if="question2.question_id === preleadQuestion.d_q_id" class="quiz-list">

                                     <div v-for="(response2, index3) in question2.answers" :key="index3"
                                         class="quiz-item" :class="{ 'chosen': chosen === index3 }">

                                        <label class="quiz-label">
                                            <input type="radio"
                                                   v-bind:value="response2"
                                                   name="index"
                                                   @change="prev(index3)"
                                                   v-on:click="onClick(index3, response2, question2.question_id)"
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
                preleadQId: '',
                currentIndex: '',
                preleadQuestion: '',


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

            // memorizeAnswer(index) {
            //     console.log('memorize called');
            //     let dependentAnswer = index;
            //     return dependentAnswer
            //
            // },

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
