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
                            <div v-for="(response, index2) in question.answers" :key="index2"
                                 class="quiz-item">

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
                                {{loadScore()}}

            </div>
        </v-container>
    </div>
</template>

<script>


    export default {
        name: "ChangeResult",
        data() {
            return {
                quiz: {}
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

                let storeResult = [];
                let allRes = [];
                let endResult = [];
                allRes = this.$store.state.result;
                storeResult = this.quiz.data;

                console.log(storeResult);

                let intermResult = [];
                if (storeResult) {
                    let keys = Object.keys(storeResult);
                    for (let i = 0; i < keys.length; i++) {
                        let val = storeResult[keys[i]];
                        for (let key in val.answers) {
                            let value = val.answers[key];
                            intermResult.push(value);


                            for (let i = 0; i < allRes.length; i++) {
                                for (let j = 0; j < storeResult.length; j++) {

                                    let test = storeResult[j].answers;
                                    let value = [];
                                    for (let key1 in test) {
                                        value = test[key];
                                    }
                                    //console.log(allRes[i].answer);
                                    //console.log(value.answer);
                                    if (allRes[i].answer === value.answer) {

                                        console.log('oooop')
                                        //endResult.push(storeResult[j].answers);

                                    }
                                }
                            }




                        }
                    }
                }


                //console.log(allRes);


            },

            // loadAllResult(){
            //
            //     let intermResult = [];
            //     if (storeResult) {
            //         let keys = Object.keys(storeResult);
            //         for (let i = 0; i < keys.length; i++) {
            //             let val = storeResult[keys[i]];
            //             for (let key in val.answers) {
            //                 let value = val.answers[key];
            //                 intermResult.push(value)
            //             }
            //         }
            //     }
            //
            //     //console.log(intermResult);
            // }

        }
    }
</script>

<style scoped>

</style>
