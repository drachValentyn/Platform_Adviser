<template>
    <div class="main-content">
        <router-link to="/" class="home-link">Back to home</router-link>
        <v-container>
            <div class="quiz">

                <div v-for="(question, index) in quiz.data" :key="index">
                    <!-- Hide all questions, show only the one with index === to current question index -->
                    <div v-show="index === questionIndex">
                        <div class="question">
                            <p class="quiz-index">{{index+1}}/{{quiz.data.length}}</p>
                            <h3 class="question">{{ question.question }}</h3>
                        </div>
                        <div class="quiz-list">
                            <!-- for each response of the current question -->
                            <div v-for="(response, index2) in question.answers" :key="index2"
                                    class="quiz-item" :class="{ 'choosen': choosen === index2 }">

                                <label class="quiz-label">

                                    <input  type="radio"
                                       v-bind:value="response.answerPoint"
                                       name="index"
                                       @change="prev()"
                                       v-model="userResponses[index]"
                                        v-on:click="onClick(index2)">

                                    {{response.answer}}

                                </label>

                            </div>

                        </div>
                        <!-- The two navigation buttons -->
                        <!-- Note: prev is hidden on first question -->
                        <!--<button class="secondary button" v-if="questionIndex > 0" v-on:click="prev">-->
                        <!--prev-->
                        <!--</button>-->
                        <!--<button class="success button" v-on:click="next">-->
                        <!--next-->
                        <!--</button>-->
                    </div>
                </div>

            </div>
        </v-container>
    </div>
</template>

<script>
  /* eslint-disable */
  export default {
    data() {
      return {
        quiz: {},
        questionIndex: 0,
        userResponses: Array(),
        choosen: 'lorem',
        // result: '',
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
      prev() {

        setTimeout(function () {
            this.next()
        }.bind(this), 300)

      },
      next() {
        this.questionIndex++;
        if (this.questionIndex === this.quiz.data.length) {
          this.score();
          this.$router.push('/result');
        }
      },


      score() {
        let maxEl = this.userResponses;
        //console.log(maxEl);
        this.$store.state.result = maxEl;
        return maxEl;

      },
    },


  }

</script>

<style scoped>
    [v-cloak] {
        display: none;
    }
    label{
        cursor: pointer;
    }
</style>
