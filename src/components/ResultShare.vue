<template>
    <div class="main-content">
        <router-link to="/" class="back-link result-link">Start again</router-link>

        <v-container v-if="res" grid-list-md>


            <v-layout row wrap
                      text-xs-center
                      class="capture-recomendation">

                <div v-for="block in results.data" :key="block.id" class="result-hero">
                    <!-- eslint-disable-next-line vue/max-attributes-per-line -->
                    <h2 class="result-hero-title">{{block.titlePage}}</h2>
                    <p class="recommendation-descript">We think that the best solution for your goals is Craft. Also
                        Wordpress and Drupal are suitable.
                        Please find an explanation on why we think so below.</p>
                </div>
            </v-layout>

            <v-layout row wrap text-xs-center class="recommendation">

                <v-flex v-for="platform in showRes"
                        :key="platform.id"
                        xs4
                >
                    <v-card v-for="(bestPlatform, index) in platform.descr"
                            :key="bestPlatform.id">
                        <v-card-text v-if="index === 0">Best choice</v-card-text>
                        <v-card-text v-if="index === 1">Good choice</v-card-text>
                        <v-card-text v-if="index === 2">Fair choice</v-card-text>

                        <v-img :src="bestPlatform.image" aspect-ratio="1.7" contain></v-img>

                        <h1>{{bestPlatform.title}}</h1>
                        <v-card-text v-html="bestPlatform.platformsDescription"></v-card-text>
                        <v-btn :href="bestPlatform.linkToExample" flat color="green">site examples</v-btn>

                    </v-card>
                </v-flex>

                <contactForm></contactForm>

            </v-layout>

        </v-container>

        <v-container grid-list-md fill-height v-else>
            <v-layout align-center justify-center>
                <v-flex xs12 class="text-xs-center">
                    <v-progress-circular
                            :size="70"
                            :width="5"
                            color="#98ca3e"
                            indeterminate
                    ></v-progress-circular>
                </v-flex>
            </v-layout>

        </v-container>

    </div>
</template>

<script>
    import ContactForm from './ContactForm'

    export default {

        name: 'ResultShare',
        props: ['id'],

        data() {
            return {
                resultShare: {},
                results: [],

                // res: {},
            }
        },
        components: {
            contactForm: ContactForm,
        },

        computed: {
            res() {
                const id = this.id;
                return this.$store.getters.ResultById(id)
            },
            links() {
                return [
                    {title: 'Quiz', url: '/quiz'},
                ]
            },
            showRes() {

                let storeResult = this.res;


                let keys = Object.keys(storeResult);

                let intermResult = [];

                for (let i = 0; i < keys.length; i++) {
                    let val = storeResult[keys[i]];
                    // for (let key in val) {
                    //     let value = val[key];
                    //     intermResult.push(value)
                    // }
                }
                console.log(storeResult.resultQuiz);

                return storeResult.resultQuiz
                // let sortResult = [];
                // let found;
                // for (let x in intermResult) {
                //     for (let y in sortResult) {
                //         found = false;
                //         if (intermResult[x].title === sortResult[y].title) {
                //             sortResult[y].point += intermResult[x].point;
                //             found = true;
                //             break;
                //         }
                //     }
                //     if (!found) {
                //         sortResult.push(intermResult[x]);
                //     }
                // }

                //console.log(storeResult);

                //return this.resultShare = sortResult;
            },

        },

        created() {
            this.$store.dispatch('loadResults');

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

        methods: {

            comparisonResult() {
                let sortRes = [];
                let allRes = [];
                let endResult = [];
                sortRes = this.sortResult(this.resultShare);
                //allRes = this.results.data;
                //console.log(sortRes);
                let intermResult = [];
                // if (allRes) {
                //     let keys = Object.keys(allRes);
                //     for (let i = 0; i < keys.length; i++) {
                //         let val = allRes[keys[i]];
                //         for (let key in val.platformsBlock) {
                //
                //             let value = val.platformsBlock[key];
                //
                //             intermResult.push(value)
                //         }
                //     }
                // }

                // for (let i = 0; i < sortRes.length; i++) {
                //     for (let j = 0; j < intermResult.length; j++) {
                //         console.log(sortRes[i]);
                //         if (sortRes[i].title === intermResult[j].platformsEntries) {
                //             endResult.push(intermResult[j]);
                //         }
                //     }
                // }

                // return endResult;
                // console.log(endResult)

            },


            sortResult(arr) {
                let longtext = Array.from(arr);
                return longtext.slice().sort(function (a, b) {
                    return b.point - a.point;
                });
            }

        },

    }

</script>

<style scoped>


</style>
