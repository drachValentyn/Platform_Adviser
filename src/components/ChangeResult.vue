<template>
    <div class="main-content">
        <v-flex class="back-link-cross">
            <router-link @click.native="scoreChange()" to="/result">SAVE CHANGES</router-link>
        </v-flex>
        <v-container grid-list-xl class="quiz">

            <h1 class="main-heading">Change answers</h1>

            <div v-for="(question, index) in quizRes.data" :key="index">

                <div class="question-block">
                    <p class="quiz-index">{{index+1}}/{{quizRes.data.length}}</p>
                    <h3 class="question">{{ question.question }}</h3>
                </div>
                <v-layout wrap row class="answers-block">
                    <v-flex xs12 sm6 md3 class="quiz-list-change-res"
                            v-for="(response, index2) in question.answers"
                            :key="index2">
<!--                        userResponses -&#45;&#45;&#45;&#45;&#45;&#45;-->
<!--{{userResponses[index]}}-->

<!--                        response &#45;&#45;&#45;&#45;&#45;&#45;-->
<!--{{response}}-->
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

        </v-container>
    </div>
</template>

<script>
    export default {
        name: "ChangeResult",
        data() {
            return {
                quizRes: {},
                ids: {},
                userResponses: {},
                chosen: '',

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
                .then(quiz => {
                    this.quizRes = quiz;
                })


        },
        mounted() {
            this.userResponses = this.loadScore();
            if (Object.keys(this.userResponses).length === 0) {
                this.$router.push('/quiz'); //--------------------------- Redirect to quiz if result null
            }
            console.log(this.userResponses);
        },

        methods: {
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
                return intermResult;
            },

            scoreChange() {
                let maxEl = this.userResponses;
                this.$store.state.result = maxEl;
                return maxEl;
            },

        },


    }
</script>

<style scoped lang="scss">
    @import "../assets/scss/base/variables.scss";
    @import "../assets/scss/base/mixins.scss";

    .container {
        padding-bottom: 60px!important;
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

    .answers-block{
        width: 100%;
        @media (max-width: 599px) {
            margin: auto!important;
        }
        @media (min-width: 600px) {
            width: auto;
            margin: auto;
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
