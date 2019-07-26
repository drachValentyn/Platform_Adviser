<template>
    <div class="main-content">
        <router-link @click.native="scoreChange()" to="/result" class="back-link home-link">SAVE CHANGES</router-link>
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
                                 class="quiz-item"
                                 :class="{ 'chosen': Object.entries(response).toString() === Object.entries(userResponses[index]).toString() }">

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
                    this.quiz = quiz;
                })


        },
        mounted() {
            this.userResponses = this.loadScore();
            if (Object.keys(this.userResponses).length === 0){
                //this.$router.push('/quiz'); //--------------------------- Redirect to quiz if result null
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
                //console.log(intermResult);
                return intermResult;
            },

            scoreChange() {
                let maxEl = this.userResponses;
                this.$store.state.result = maxEl;
                console.log(this.$store.state.result);
                //this.$router.push('/result');
                return maxEl;
            },

        },


    }
</script>

<style scoped lang="scss">

</style>
