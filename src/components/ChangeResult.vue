<template>
    <div class="main-content">
        <router-link to="/quiz" class="back-link home-link">SAVE CHANGES</router-link>
        <v-container>
            <div class="quiz">

                {{getClass()}}
                <div v-for="(question, index) in quiz.data" :key="index">
                    <!-- Hide all questions, show only the one with index === to current question index -->
                    <div>
                        <div class="question">
                            <p class="quiz-index">{{index+1}}/{{quiz.data.length}}</p>
                            <h3 class="question">{{ question.question }}</h3>
                        </div>
                        <div class="quiz-list">
                            <div v-for="(response, index2) in question.answers" :key="index2"
                                 class="quiz-item" :class="getClass(response.id_answer)">

                                <label class="quiz-label">

                                    <input type="radio"
                                           v-bind:value="response.answerPoint"
                                           name="index">
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
            loadScore(){
                //this.ids =+ this.$store.state.changeResult;

                let storeResult = [];
                let allRes = [];
                let endResult = [];
                storeResult = this.$store.state.result;
                //storeResult = this.quiz.data;
                //console.log(storeResult);

                let intermResult = [];
                //if (storeResult) {
                    let keys = Object.keys(storeResult);
                    for (let i = 0; i < keys.length; i++) {
                        let val = storeResult[keys[i]];

                        intermResult.push(val.id_answer);


                        // for (let key in val.id_answer) {
                        //     let value = val.id_answer[key];
                        //     console.log(value)
                        //
                        // }
                    }

               // }

                //this.ids = intermResult;
                console.log(intermResult);

                return intermResult;




            },



            getClass(prop){
                let test = this.loadScore();
                //console.log(test);
                for (let key in test) {
                    let value = test[key];
                    console.log(value);

                    if (prop === value) {
                        console.log(prop);
                        return "chosen"
                    }


                }

            }
        }
    }
</script>

<style scoped>

</style>
