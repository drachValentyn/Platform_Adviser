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
                                <!--<div @click='next'> @click.prevent -->

                                <label class="quiz-label">

                                    <input  type="radio"
                                       v-bind:value="response.answerPoint"
                                       name="index"
                                       @change="prev()"
                                       v-model="userResponses[index]"
                                        v-on:click="onClick(index2)">

                                {{response.answer}}

                                </label>


                                <!--</div>-->

                                <!--{{response.answerPoint}}-->


                                <!--                                    -&#45;&#45;&#45;&#45; {{response.answerPoint}}-->
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
            //console.log(userResponses)
          })
    },
    methods: {
      prev() {
        setTimeout(function () { this.next() }.bind(this), 300)

        //this.questionIndex--;
      },
      next() {
        this.questionIndex++;
        console.log(this.userResponses)
        this.onClick();
        if (this.questionIndex === this.quiz.data.length) {
          this.score();
          //this.createResult();
          this.$router.push('/result');
        }
      },
      onClick(index) {
        this.choosen = index;
      },


      // next() {
      //
      //   // console.log(this.userResponses)
      //   setTimeout(() => {
      //
      //     this.questionIndex++;
      //     this.onClick();
      //
      //   }, 500);
      //   setTimeout(() => {
      //     if (this.questionIndex === this.quiz.data.length) {
      //       this.score();
      //       // console.log(score())
      //
      //       //this.createResult();
      //       this.$router.push('/result');
      //     }
      //   }, 500);
      //   // setTimeout(()=>{
      //
      //   //}, 500);
      //
      // },



      // next() {
      //
      //   console.log(this.userResponses)
      //   setTimeout(()=>{
      //
      //
      //             this.questionIndex++;
      //             if (this.questionIndex === this.quiz.data.length) {
      //               this.score();
      //                   console.log('ok')
      //
      //               //this.createResult();
      //               this.$router.push('/result');
      //             }
      //           }, 500);
      // setTimeout(()=>{

      //}, 500);

      // },

      score() {
        let maxEl = this.userResponses;
        console.log(maxEl);
        this.$store.state.result = maxEl;
        return maxEl;

      },
      // createResult() {
      //     const res = {
      //         resultQuiz: this.score(),
      //         key: ''
      //     };
      //
      //     this.$store.dispatch('addResult', res);
      //
      //     //console.log(res)
      // }
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
