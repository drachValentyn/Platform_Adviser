<template>
    <div class="main-content">
        <router-link to="/" class="back-link result-link">Back to home</router-link>
        <v-container>

            <div class="quiz">
                <div v-for="(question, index) in quiz.data" :key="index">
                    <div v-show="index === questionIndex">
                        <div v-if="question.question_type === 'questionsList'">

                            <div class="question">
                                <p class="quiz-index">{{index+1}}/{{quiz.data.length}}</p>
                                    <h3 class="question">{{ question.question_title }}</h3>
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
                                            <p v-if="obj.dependent_question[0].d_q_type === 'checkboxQuestion'" >multiple select</p>
                                        </h3>


                                        <div v-for="(dependent_question, dq_index) in dependent_quiz.data" :key="dq_index"
                                             v-if="dependent_question.question_id === obj.dependent_question[0].d_q_id" class="quiz-list">

                                            <div v-for="(response3, index3) in dependent_question.answers" :key="index3"
                                                 class="quiz-item" :class="{ 'chosen': chosen === index3 }">

                                                <answers
                                                    :answer_response="response3"
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


                                            <div v-for="(response4, index4) in dependent_question.checkbox_answers" :key="index4"
                                                 class="quiz-item" :class="{ 'chosen': checkboxResponses[response4.answer] }">

                                                <checkboxAnswers
                                                    :answer_response="response4"
                                                    :answer_index="index4"
                                                    :dependent_question_id="dependent_question.question_id"
                                                    :dependent_question_title="dependent_question.question_title"
                                                    :checkboxResponses="checkboxResponses"
                                                    :index="index"
                                                    :onClickCheckbox="onClickCheckbox"
                                                    :activateButton="activateButton"
                                                    :checkedAnswers="checkedAnswers"
                                                />
                                            </div>
                                        </div>
                                        <div v-if="obj.dependent_question[0].d_q_type === 'checkboxQuestion'">
                                            <v-btn v-on:click="next"  class="button-main" :class="{ disabled: isDisabled }" :disabled="isDisabled" >ACCEPT</v-btn>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div v-else-if="question.question_type === 'checkboxQuestion'">

                            <div class="question">
                                <p class="quiz-index">{{index+1}}/{{quiz.data.length}}</p>
                                <h3 class="question">{{ question.question_title }}
                                    <p>multiple select</p>
                                </h3>

                                <div class="quiz-list">

                                    <div v-for="(response5, index5) in question.checkbox_answers" :key="index5"
                                         class="quiz-item" :class="{ 'chosen': checkboxResponses[response5.answer] }">

                                        <checkboxAnswers
                                            :answer_response="response5"
                                            :answer_index="index5"
                                            :dependent_question_id="question.question_id"
                                            :dependent_question_title="question.question_title"
                                            :checkboxResponses="checkboxResponses"
                                            :index="index"
                                            :activateButton="activateButton"
                                            :onClickCheckbox="onClickCheckbox"
                                            :checkedAnswers="checkedAnswers"
                                        />
                                    </div>
                                </div>

                                <div>
                                    <v-btn v-on:click="next"  class="button-main" :class="{ disabled: isDisabled }" :disabled="isDisabled" >ACCEPT</v-btn>
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
  import CheckboxAnswers from './CheckboxAnswers'
    /* eslint-disable */
    export default {
      components: {
        answers: Answers,
        checkboxAnswers: CheckboxAnswers,
        footers: Footer,
      },
        data() {
            return {
                quiz: {},
                dependent_quiz: {},
                questionIndex: 0,
                userResponses: Array(),
                checkboxResponses: {},
                chosen: '',
                preleadQuestion: '',
                dependentQuestion: '',
                checkedAnswers: {},
                isDisabled: true

            }
        },

        mounted: function () {
            this.$http.get('api/questions.json')
                .then(response => {
                        return response.json();
                    }, response => {

                    }
                )
                .then(quiz => {
                    this.quiz = quiz;
                });
            this.$http.get('api/dependent-questions.json')
                .then(response => {
                            return response.json();
                        }, response => {

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
                this.questionIndex++;
                this.onClick();

                if (this.questionIndex === this.quiz.data.length) {
                    this.score();  //---------------------------------------//      push to Result
                    this.$router.push('/result');
                    //this.$router.push('/change-result');
                }
                console.log(this.userResponses);
            },

            onClick(index, response, question_id, question_type) {
                this.chosen = index;
                if (response) {
                    response.question_id = question_id;
                    response.question_type = question_type;
                }
            },

            onClickCheckbox(question_index, index4, response, question_id, question_title, checkedAnswers) {
                if (response) {
                    checkedAnswers.checkbox_question_title = question_title;
                    checkedAnswers.checkbox_question_id = question_id;
                    checkedAnswers.answers = this.checkboxResponses;
                    this.userResponses.splice([question_index], 1, {});
                    console.log(checkedAnswers);
                    console.log(this.userResponses);
                }
            },

            activateButton () {
                this.isDisabled = false;
            },

            score() {
                let maxEl = this.userResponses;
                let checkboxes_info = this.checkedAnswers;

                console.log(maxEl);
                console.log(checkboxes_info);
                this.$store.state.result = maxEl;
                this.$store.state.checkboxes = checkboxes_info;

                // return [maxEl, checkboxes_info];
            },
        },
    }

</script>

<style scoped>

</style>
