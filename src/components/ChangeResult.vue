<template>
    <div class="main-content">
        <v-flex class="back-link-cross">
            <router-link @click.native="scoreChange()" to="/result">SAVE CHANGES</router-link>
        </v-flex>
        <v-container grid-list-xl class="quiz">

            <h1 class="main-heading">Change answers</h1>

            <div v-for="(question, index) in quizRes.data" :key="index">

                <div class="question-block" v-if="question.question_type === 'questionsList'">
                    <p class="quiz-index">{{index+1}}/{{quizRes.data.length}}</p>
                    <h3 class="question">{{ question.question_title }}</h3>

                    <v-layout wrap row class="answers-block">

                        <v-flex xs12 sm6 md3 class="quiz-list-change-res"
                                v-for="(response, index2) in question.answers"
                                :key="index2">

                            <div class="quiz-item"
                                 :class="{ 'chosen': response.id_answer === userResponses[index].id_answer }"
                            >
                                <label class="quiz-label">
                                    <input type="radio"
                                           :name="'index'+index"
                                           :value="response"
                                           v-model="userResponses[index]"
                                           :checked="response === userResponses[index]"
                                    >

                                    {{response.answer}}

                                </label>
                            </div>
                        </v-flex>
                    </v-layout>
                </div>


                <div v-else-if="question.question_type === 'blockOfQuestions'">
                    <v-layout wrap row class="question-block">

                        <p class="quiz-index">{{index+1}}/{{quizRes.data.length}}</p>

                        <div v-for="(obj, o_index) in userResponses" :key="o_index">

                            <div v-if="obj.question_id === question.prelead_question[0].p_q_id">

                                <h3 class="question">{{ obj.dependent_question[0].d_q_title }}</h3>

                                <div v-if="obj.dependent_question[0].d_q_type === 'checkboxQuestion'"
                                     class="multi_select_change">Multiple Select
                                </div>


                                <div v-for="(dependent_question, dq_index) in dependent_quiz.data" :key="dq_index"
                                     v-if="dependent_question.question_id === obj.dependent_question[0].d_q_id"
                                     class="quiz-list quiz-list-multi">

                                    <div v-for="(response4, index4) in checkAnswer"
                                         :key="index4"
                                         class="quiz-item"
                                         :class="{ chosen:  response4.trueFalse }"
                                    >

                                        <label class="quiz-label">

                                            <input type="checkbox"
                                                   :name="dq_index"
                                                   :value="response4.trueFalse"
                                                   v-model="response4.trueFalse"
                                            >
                                            {{response4.answer}}
                                        </label>

                                    </div>


                                    <div v-for="(response3, index3) in dependent_question.answers" :key="index3"
                                         class="quiz-item">

                                        <!--                                        :class="{ 'chosen': response.id_answer === userResponses[index].id_answer }"-->
                                        <answers
                                                :answer_response="response3"
                                                :answer_index="index3"
                                                :answer_question="dependent_question"
                                                :chosen="chosen"
                                                :userResponses="userResponses"
                                                :index="index"
                                                :onClick="onClick"
                                                :prev="prev"

                                        />
                                    </div>


                                </div>
                            </div>
                        </div>
                    </v-layout>
                </div>


                <div v-else-if="question.question_type === 'checkboxQuestion'">
                    <v-layout wrap row class="question-block">
                        <p class="quiz-index">{{index+1}}/{{quizRes.data.length}}</p>

                        <h3 class="question">{{ question.question_title }}</h3>

                        <div class="multi_select_change">Multiple Select</div>

                        <div class="quiz-list">
                            <div v-for="(response5, index5) in question.checkbox_answers" :key="index5"
                                 class="quiz-item">
                                <!--                                :class="{ 'chosen': checkboxResponses[response5.answer] }"-->
                                response5 -- {{response5}}
                                checkboxResponses -- {{checkboxResponses}}


                                <checkboxAnswers
                                        :answer_response="response5"
                                        :answer_index="index5"
                                        :dependent_question_id="question.question_id"
                                        :dependent_question_title="question.question_title"
                                        :checkboxResponses="checkboxResponses"
                                        :index="index"
                                        :onClickCheckbox="onClickCheckbox"
                                        :checkedAnswers="checkedAnswers"
                                />

                            </div>
                        </div>
                    </v-layout>
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

    export default {
        name: "ChangeResult",
        props: ['answer_response', 'answer_index', 'index', 'dependent_question_id', 'dependent_question_title'],
        components: {
            answers: Answers,
            checkboxAnswers: CheckboxAnswers,
            footers: Footer,
        },
        data() {
            return {
                quizRes: {},
                ids: {},
                userResponses: {},
                //chosen: true,

                isDisabled: false,
                checkboxResponses: {},
                preleadQuestion: '',
                dependentQuestion: '',
                checkedAnswers: {},
                checkAnswer: {},
                dependent_quiz: {},
            }
        },
        beforeMount() {
            this.$http.get('api/questions.json')
                .then(response => {
                        return response.json();
                    }, response => {
                        console.log(response)
                    }
                )
                .then(response => {
                    this.quizRes = response;
                });
            // dependent questions
            this.$http.get('api/dependent-questions.json')
                .then(response => {
                        return response.json();
                    }, response => {
                        console.log(response)
                    }
                )
                .then(response => {
                    this.dependent_quiz = response;
                })


        },
        watch: {
          // chosen(val){
          //     console.log('chosen')
          //     console.log(val)
          //     this.chosen = val
          // }
        },
        mounted() {
            // questions
            this.$http.get('api/questions.json')
                .then(response => {
                        return response.json();
                    }, error => {
                        console.log(error)
                    }
                )
                .then(quiz => {
                    this.quizRes = quiz;
                });

            this.userResponses = this.loadScore();
            if (Object.keys(this.userResponses).length === 0) {
                this.$router.push('/quiz'); //--------------------------- Redirect to quiz if result null
            } else {

                console.log(this.userResponses);
                // let keys = Object.keys(this.userResponses[3].answers);
                // let numkeys = Object.keys(this.userResponses);
                // //console.log( Object.keys(this.userResponses).length);
                //
                // let arrSort =[];
                // console.log(keys);
                //
                // for (let i = 0; i < numkeys.length; i++) {
                //
                //
                //     arrSort.push(keys[i])
                // }
                // // for (let Key in keys) {
                // //     arrSort.push(keys[Key])  ;
                // // }
                //
                // this.checkboxResponses = arrSort;


            }


        },
        methods: {
            loadScore() {
                let storeResult = [];
                storeResult = this.$store.state.result;
                let intermResult = [];
                this.checkAnswer = storeResult.checkBox
                console.log(this.checkAnswer);
                if (storeResult) {
                    let keys = Object.keys(storeResult);
                    for (let i = 0; i < keys.length; i++) {
                        let val = storeResult[keys[i]];
                        intermResult.push(val);
                    }
                }
                return intermResult;
            },

            scoreChange() {
                let maxEl = this.userResponses;
                this.$store.state.result = maxEl;
                return maxEl;
            },

            changeClass(className){

                    let keys = Object.keys(this.userResponses[3].answers);

                    for (let Key in keys) {
                        let arrSort = keys[Key];
                        if(className === arrSort){
                            return true
                        }
                    }
            },


        },


    }
</script>

<style scoped lang="scss">
    @import "../assets/scss/base/variables.scss";
    @import "../assets/scss/base/mixins.scss";

    .container {
        padding-bottom: 60px !important;
        @media (min-width: 1200px) {
            max-width: 72.75%;
            padding-bottom: 10vw;
        }
        @media (min-width: 1400px) {
            max-width: 48.75%;
        }
        @media (min-width: 1921px) {
            max-width: 936px;
            padding-bottom: 192px;
        }

    }

    .multi_select_change {
        text-align: left;
        margin-top: 20px;
        margin-bottom: 30px;
        font-family: $main-font;
        @include fluid-type(17px, 19px);
    }

    .answers-block {
        width: 100%;
        @media (max-width: 599px) {
            margin: auto !important;
        }
        @media (min-width: 600px) {
            width: auto;
            margin: auto;
        }
    }

    .quiz-item {
        height: 100%;
        margin-bottom: 0;
    }

    .quiz-list-multi {
        justify-content: space-between;

        .quiz-item {
            height: auto;
            margin-bottom: 20px;
        }
    }

    .quiz-list-change-res {
        padding: 0 !important;
        @media all and (min-width: 600px) {
            padding: 12px !important;
        }
    }

    .back-link-cross {
        display: flex;
        padding: 16px 24px 0;

        a {
            display: flex;
            justify-content: space-between;
            color: $primary-green;
            font-family: $additional-font;
            font-size: 18px;
            font-weight: 400;
            letter-spacing: 2px;
            line-height: 1.33;
            text-transform: uppercase;
            text-decoration: none;

            &:after {
                content: url(../assets/images/icon-cross.svg);
                display: inline-flex;
                height: 20px;
            }

            @media (max-width: 600px) {
                width: 100%;
            }
        }

        @media (max-width: 600px) {
            width: 100%;
        }
        @media all and (min-width: 475px) {
            justify-content: flex-end;
            a:after {
                margin-left: 20px;
            }
        }
        @media all and (min-width: 768px) {
            padding: 2.813vw 2.813vw 0 0;
            a:after {
                margin-left: 40px;
            }
        }

    }

    .main-heading {
        padding-bottom: 0;
        padding-top: 16.875vw;
        margin-top: 0;
        line-height: 1;
        @media all and (min-width: 665px) {
            padding-top: 115px;
        }
    }

    .question-block {
        .quiz-index {
            letter-spacing: 7px;
            text-align: start;
        }

        .question {
            font-family: $additional-font;
            font-size: 28px;
            font-weight: 400;
            line-height: 1.77;
            text-align: start;
            margin-bottom: 16px;

            @media (max-width: 530px) {
                line-height: 1.27;
            }
        }

        @media (min-width: 960px) {
            .quiz-index {
                margin-top: 3.229vw;
                margin-bottom: 0.938vw;
            }
        }

    }

    .quiz-list-change-res {
        @media (max-width: 600px) {
            margin-bottom: 8px;
        }
    }


</style>
