<template>
    <div class="main-content container">
        <div class="back-link result-link">
            <a v-if="questionIndex > 0" @click="previous">
                Back to previous question
            </a>
            <router-link v-else to="/">Back to home</router-link>
        </div>

        <div class="quiz">
            <div v-for="(question, index) in quiz.data" :key="index">
                <div v-show="index === questionIndex">
                    <div v-if="question.question_type === 'questionsList'">
                        <div class="question-block">
                            <p class="quiz-index">{{index+1}}/{{quiz.data.length}}</p>
                            <h3 class="question">{{ question.question_title }}</h3>
                        </div>
                        <v-layout class="quiz-list">
                            <v-flex class="quiz-item"
                                    v-for="(response, index2) in question.answers"
                                    :key="response.id_answer"
                                    :class="{ 'chosen': chosen === index2 } "
                                    :style="countCard(Object.keys(question.answers).length)">
                                <answers
                                        :class="countCardLabel(Object.keys(question.answers).length)"
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
                            </v-flex>
                        </v-layout>
                    </div>

                    <div v-else-if="question.question_type === 'blockOfQuestions'">
                        <div class="question-block">
                            <p class="quiz-index">{{index+1}}/{{quiz.data.length}}</p>
                            <div v-for="(obj, o_index) in userResponses" :key="o_index">

                                <div v-if="obj.dependent_question[0]">
                                    <h3 class="question">
                                        {{obj.dependent_question[0].d_q_title}}
                                    </h3>

                                    <div class="multi_select"
                                         v-if="obj.dependent_question[0].d_q_type === 'checkboxQuestion'">You can select
                                        several items
                                    </div>

                                    <div v-for="(dependent_question, dq_index) in dependent_quiz.data"
                                         :key="dq_index"
                                         v-if="dependent_question.question_id === obj.dependent_question[0].d_q_id"
                                         class="quiz-list">

                                        <div class="quiz-item"
                                             v-for="(response3, index3) in dependent_question.answers"
                                             :key="response3.id_answer"
                                             :class="{ 'chosen': chosen === index3 }">
                                            <label class="quiz-label">
                                                <input type="radio"
                                                       v-bind:value="response3"
                                                       name="index"
                                                       @change="prev()"
                                                       v-on:click="onClick(index3)"
                                                       v-model="userResponses[index3]"
                                                >

                                                {{response3.answer}}

                                            </label>
                                        </div>

                                        <div class="quiz-item cheking"
                                             v-for="(response4, index4) in dependent_question.checkbox_answers"
                                             :key="response4.id_answer"
                                             :class="{ 'chosen-chek': checkboxResponses[response4.answer] }">

                                            <checkboxAnswers
                                                    :class="countCardLabel(Object.keys(dependent_question.checkbox_answers).length)"
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
                                    <div v-if="obj.dependent_question[0].d_q_type === 'checkboxQuestion'" class="button-quiz-wrap">
                                        <v-btn v-on:click="next" class="button-quiz 22"
                                               :class="{ disabled: isDisabled }" :disabled="isDisabled">NEXT
                                        </v-btn>
                                        <!--class-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div v-else-if="question.question_type === 'checkboxQuestion'">
                        <div class="question-block">

                            <p class="quiz-index">{{index+1}}/{{quiz.data.length}}</p>

                            <h3 class="question">{{ question.question_title }}</h3>

                            <div class="multi_select">Multiple Select</div>

                            <div class="quiz-list">
                                <div class="quiz-item checkboxQuestion"
                                     v-for="(response5, index5) in question.checkbox_answers"
                                     :key="response5.id_answer"
                                     :class="{ 'chosen': checkboxResponses[response5.answer] }">

                                    <checkboxAnswers
                                            :class="countCardLabel(Object.keys(dependent_question.checkbox_answers).length)"
                                            :answer_response="response5"
                                            :answer_index="index5"
                                            :dependent_question_id="question.question_id"
                                            :dependent_question_title="question.question_title"
                                            :checkboxResponses="checkboxResponses[response5.answer]"
                                            :index="index5"
                                            :activateButton="activateButton"
                                            :onClickCheckbox="onClickCheckbox"
                                            :checkedAnswers="checkedAnswers"
                                    />

                                </div>

                            </div>

                            <div>
                                <v-btn v-on:click="next" class="button-quiz 11" :class="{ disabled: isDisabled }"
                                       :disabled="isDisabled">NEXT
                                </v-btn>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <footers v-if="loading"/>
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
        isDisabled: true,
        loading: false
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
          });
      this.$http.get('api/dependent-questions.json')
          .then(response => {
                return response.json();
              }, response => {
                console.log(response)
              }
          )
          .then(quiz => {
            this.dependent_quiz = quiz;
            this.loading = true
          })
    },
    methods: {

      countCard(counter) {

        if (counter === 2) {
          return 'width: 50%;' + 'max-width: 420px;'
        } else if (counter === 3)
          return 'width: 33.3%;' + 'max-width: 275px;'
      },

      countCardLabel(counter) {
        if (counter === 2) {
          return 'quiz-label2'
        } else if (counter === 3) {
          return 'quiz-label3'
        } else if (counter === 5) {
          return 'quiz-label5'

        }

      },

      previous: function () {
        this.questionIndex--;
      },

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
      },
      onClick(index, response, question_id, question_type) {
        this.chosen = index;
        if (response) {
          response.question_id = question_id;
          response.question_type = question_type;
        }
      },
      onClickCheckbox(value) {
        let el = this.userResponses;
        let depQ = this.dependent_quiz.data;
        let checkbox_answers;
        let arrCheck = [];

        let id_quest;
        for (let ft in el) {
          if (el[ft].dependent_question[0]) {
            id_quest = el[ft].dependent_question[0].d_q_id
          }
        }
        for (let q in depQ) {
          if (depQ[q].question_id === id_quest) {
            checkbox_answers = depQ[q].checkbox_answers;
            for (let x in checkbox_answers) {
              if (value === checkbox_answers[x].id_answer) {
                checkbox_answers[x]['trueFalse'] = true
              }
              arrCheck.push(checkbox_answers[x])
            }
          }
        }

        this.checkedAnswers = arrCheck;

      },
      activateButton() {
        this.isDisabled = false;
      },
      score() {
        let maxEl = this.userResponses;
        maxEl.checkBox = this.checkedAnswers;
        this.$store.state.result = maxEl;
      },
    },
  }
</script>

<style scoped lang="scss">


    .quiz-label2 {
        padding: 32px 24px;
        min-height: 148px;
    }

    .quiz-label3 {
        padding: 36px 24px;
    }

    .quiz-label5 {
        @media all and (min-width: 960px) {
            width: 204px;
            padding: 15px 24px;
            min-height: 128px;
        }
    }

    .main-content {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    /*.theme--light.button-quiz.v-btn--disabled:not(.v-btn--icon):not(.v-btn--flat):not(.v-btn--outline) {*/
        /*background-color: transparent !important;*/
        /*width: 160px;*/
    /*}*/

    /*.theme--light.button-quiz:not(.v-btn--icon):not(.v-btn--flat) {*/
        /*background-color: transparent !important;*/
    /*}*/


    .button-quiz-wrap {
        font-family: 'Staatliches', cursive;
    }

    .button-quiz-wrap .theme--light.button-quiz:not(.v-btn--icon):not(.v-btn--flat) {
        background: #98ca3e !important;
        width: 264px;
        height: 60px;
        color: #221f44;
        border-radius: 8px;
    }

    .button-quiz-wrap .theme--light.button-quiz.v-btn--disabled:not(.v-btn--icon):not(.v-btn--flat):not(.v-btn--outline) {
        width: 264px;
        height: 60px;
        background-color: #383557 !important;
        color: #ffffff !important;
        border-radius: 8px;
    }

    .footer-wrap {
        margin-top: 10vh;
        bottom: 0;
        right: 0;
        left: 0;
        text-align: center;
        position: relative;
        @media (min-width: 1025px) {
            position: relative;
            margin-top: 0;

        }
    }

</style>
