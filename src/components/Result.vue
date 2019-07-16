<template>
    <div class="main-content">
        <router-link to="/quiz" class="back-link result-link">Start again</router-link>
        <v-container grid-list-md>
            <v-layout row wrap text-xs-center class="capture-recomendation">
                <!--<v-btn to="/quiz">Start again</v-btn>-->
                <div v-for="block in results.data" :key="block.id" class="result-hero">
                    <!-- eslint-disable-next-line vue/max-attributes-per-line -->
                    <h2 class="result-hero-title">{{block.titlePage}}</h2>
                    <p class="recommendation-descript">We think that the best solution for your goals is Craft. Also
                        Wordpress and Drupal are suitable.
                        Please find an explanation on why we think so below.</p>
                </div>

                <router-link to="/quiz" class="back-link back-change-link">Change answers</router-link>
            </v-layout>

            <v-layout row wrap text-xs-center class="recommendation">

                <!--<v-flex v-for="(platform, index)  in sortResult(resultQuiz)"-->
                <!--:key="platform.id"-->
                <!--xs4-->
                <!--&gt;-->

                <!--<v-card class="px-0">-->

                <!--<v-card-text v-if="index === 0">Best choice</v-card-text>-->
                <!--<v-card-text v-if="index === 1">Good choice</v-card-text>-->
                <!--<v-card-text v-if="index === 2">Fair choice</v-card-text>-->

                <!--<v-card-text>Platform: {{ platform.title }} - Point: {{ platform.point }}</v-card-text>-->

                <!--</v-card>-->
                <!--</v-flex>-->

                <v-flex v-for="(platform, index) in comparisonResult()"
                        :key="platform.id"
                        xs12 md4
                >

                    <v-card class="px-0" v-for="bestPlatform in platform.descr"
                            :key="bestPlatform.id">
                        <div class="recommendation-choice">
                            <v-card-text class="recommendation-choice-item" v-if="index === 0">Best choice</v-card-text>
                            <v-card-text class="recommendation-choice-item" v-if="index === 1">Good choice</v-card-text>
                            <v-card-text class="recommendation-choice-item" v-if="index === 2">Fair choice</v-card-text>
                        </div>

                        <v-img class="platform-image" :src="bestPlatform.image" aspect-ratio="1"></v-img>

                        <!--<h1 class="best-platform-title" v-html="bestPlatform.platformName">{{}}</h1>-->
                        <v-card-text v-html="bestPlatform.platformsName"></v-card-text>


                        <v-card-text v-html="bestPlatform.platformsDescription"></v-card-text>

                        <v-btn :href="bestPlatform.linkToExample" flat color="green">site examples</v-btn>

                    </v-card>
                </v-flex>
            </v-layout>
            <v-layout>
                <div v-for="block in results.data" :key="block.id">
                    <!-- eslint-disable-next-line vue/max-attributes-per-line -->
                    <h2>({{block.titlePage}})Comparison</h2>
                    <ul class="inner">
                        <li v-for="lock in block.platformsBlock" :key="lock.id">
                            <p>{{lock.platformsEntries}}</p>
                            <div v-for="descript in lock.descr" :key="descript.id">
                                <div v-html="descript.platformsDescription"></div>
                                <p v-html="descript.linkToExample"></p>
                                <img :src="descript.image"/>
                            </div>
                            <table>
                                <tr>
                                    <td><p>Comparisons Name</p></td>
                                    <td><p>Results</p></td>
                                    <!--<td><p>Comparisons Name</p></td><p>Platforms</p><td>-->
                                </tr>
                                <tr v-for="comparItem in lock.comparass" :key="comparItem.id">
                                    <td><p>{{comparItem.comparisonsNameTitle}}</p></td>
                                    <td>
                                        <img v-if="comparItem.stars" :src="comparItem.stars"/>
                                        <img v-if="comparItem.dollars" :src="comparItem.dollars"/>
                                        <p v-if="comparItem.text">{{comparItem.text}}</p>
                                    </td>
                                </tr>

                            </table>
                        </li>
                    </ul>

                </div>

            </v-layout>
        </v-container>

    </div>
</template>

<script>
  /* eslint-disable */
  //import {Facebook, Twitter, Email,} from "vue-socialmedia-share";
  import Quiz from './Quiz'
  //import DescResult from './Result Components/DescriptResult'

  export default {
    name: 'Result',

    // components: {
    //     Facebook,
    //     Twitter,
    //     Email,
    //     descResult: DescResult,
    // },
    data() {
      return {
        resultQuiz: {},
        //url: '',
        results: [],
      }
    },
    created() {

      this.$http.get('api/results.json')
          .then(response => {
                return response.json();
              }, response => {
                console.log(response)
              }
          )
          .then(results => {
            this.results = results;
          });
    },
    mounted:
        function () {
          let storeResult = this.$store.state.result;
          let keys = Object.keys(storeResult);
          let intermResult = [];

          for (let i = 0; i < keys.length; i++) {
            let val = storeResult[keys[i]];
            for (let key in val) {
              let value = val[key];
              intermResult.push(value)
            }
          }

          let sortResult = [];
          let found;
          for (let x in intermResult) {
            for (let y in sortResult) {
              found = false;
              if (intermResult[x].title === sortResult[y].title) {
                sortResult[y].point += intermResult[x].point;
                found = true;
                break;
              }
            }
            if (!found) {
              sortResult.push(intermResult[x]);
            }
          }
          return this.resultQuiz = sortResult;
        },
    methods: {

      comparisonResult() {
        let sortRes = [];
        let allRes = [];
        let endResult = [];
        sortRes = this.sortResult(this.resultQuiz);
        allRes = this.results.data;

        //console.log(sortRes);
        let intermResult = [];
        if (allRes) {
          let keys = Object.keys(allRes);
          for (let i = 0; i < keys.length; i++) {
            let val = allRes[keys[i]];
            for (let key in val.platformsBlock) {

              let value = val.platformsBlock[key];

              intermResult.push(value)
            }
          }
        }

        for (let i = 0; i < sortRes.length; i++) {
          for (let j = 0; j < intermResult.length; j++) {
            if (sortRes[i].title === intermResult[j].platformsEntries) {
              endResult.push(intermResult[j]);
            }
          }
        }

        const res = {
          resultQuiz: endResult,
          key: ''
        };

        //this.$store.dispatch('addResult', res); --------------------- IMPORTANT, THIS CONNECT TO FIREBASE

        return endResult;

      },
      sortResult(arr) {
        let longtext = Array.from(arr);
        return longtext.sort(function (b, a) {
          return a.point - b.point;
        }).slice(0, 3);
      },
      createResult() {
        const res = {
          resultQuiz: this.comparisonResult(),
          key: ''
        };

        this.$store.dispatch('addResult', res);

        //console.log(res)
      }
    },
    computed: {
      links() {
        return [
          {title: 'Quiz', url: '/quiz'},
        ]
      }
    }

  }

</script>

<style scoped lang="scss">


</style>
