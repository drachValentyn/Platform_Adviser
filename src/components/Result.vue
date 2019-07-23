<template>
    <div class="main-content">

            <router-link to="/quiz" class="back-link result-link">Start again</router-link>
            <v-container v-if="comparisonResult()" grid-list-md>
                <v-layout row wrap text-xs-center class="capture-recomendation">
                    <!--<v-btn to="/quiz">Start again</v-btn>-->
                    <div v-for="block in results.data" :key="block.id" class="result-hero">
                        <!-- eslint-disable-next-line vue/max-attributes-per-line -->
                        <h2 class="result-hero-title">{{block.titlePage}}</h2>
                        <p class="recommendation-descript">We think that the best solution for your goals is Craft. Also
                            Wordpress and Drupal are suitable.
                            Please find an explanation on why we think so below.</p>
                    </div>

                    <router-link to="/change-result" class="back-link back-change-link">Change answers</router-link>
                </v-layout>

                <v-layout row wrap text-xs-center class="recommendation">

                    <v-flex v-for="(platform, index) in comparisonResult()"
                            :key="index"
                            xs12 md4
                    >

                        <v-card class="px-0" v-for="bestPlatform in platform.descr"
                                :key="bestPlatform.id">
                            <div class="recommendation-item-hero">
                                <div class="recommendation-choice">
                                    <v-card-text class="recommendation-choice-item" v-if="index === 0">Best choice
                                    </v-card-text>
                                    <v-card-text class="recommendation-choice-item" v-if="index === 1">Good choice
                                    </v-card-text>
                                    <v-card-text class="recommendation-choice-item" v-if="index === 2">Fair choice
                                    </v-card-text>
                                </div>

                                <v-img class="platform-image" :src="bestPlatform.image" aspect-ratio="1"></v-img>
                            </div>
                            <div class="recommendation-item-main">
                                <h1 class="best-platform-title" v-html="bestPlatform.platformsName"></h1>
                                <read-more class="more" more-str="More" :text="bestPlatform.platformsDescription" link="#"
                                           less-str="Read less" :max-chars="178"></read-more>
                                <a class="link-examples" :href="bestPlatform.linkToExample">site examples</a>
                            </div>

                        </v-card>
                    </v-flex>
                </v-layout>



                    <div class="result-hero">
                        <!-- eslint-disable-next-line vue/max-attributes-per-line -->
                        <h2 class="result-hero-title">Comparision</h2>
                    </div>


                <v-layout class="result-table-wrap">
                    <div v-for="(platform, index) in comparisonResult()"
                         :key="index" class="result-table">
                        <div class="px-0" v-for="bestPlatform in platform.descr"
                             :key="bestPlatform.id">
                            <div class="recommendation-item-hero">
                                <div class="recommendation-choice">
                                    <v-card-text class="recommendation-choice-item" v-if="index === 0">Best choice
                                    </v-card-text>
                                    <v-card-text class="recommendation-choice-item" v-if="index === 1">Good choice
                                    </v-card-text>
                                    <v-card-text class="recommendation-choice-item" v-if="index === 2">Fair choice
                                    </v-card-text>
                                </div>

                                <v-img class="platform-image" :src="bestPlatform.image" aspect-ratio="1"></v-img>
                            </div>
                        </div>
                        <table>
                            <tr>
                                <td><p>Comparisons Name</p></td>
                                <td><p>Results</p></td>
                                <!--<td><p>Comparisons Name</p></td><p>Platforms</p><td>-->
                            </tr>
                            <tr v-for="compareItem in platform.comparass" :key="compareItem.id">
                                <!--{{compareItem}}-->
                                <td class="nameCompar"><p>{{compareItem.comparisonsNameTitle}}</p></td>
                                <td>
                                    <img v-if="compareItem.stars" :src="compareItem.stars"/>
                                    <img v-if="compareItem.dollars" :src="compareItem.dollars"/>
                                    <p v-if="compareItem.text">{{compareItem.text}}</p>
                                </td>
                            </tr>

                        </table>

                    </div>
                </v-layout>

                <v-layout class="sl">
                    <slick ref="slick" :options="slickOptions" class="slick-result">
                        <div v-for="(platform, index) in comparisonResult()"
                             :key="index">
                            <div class="px-0" v-for="bestPlatform in platform.descr"
                                 :key="bestPlatform.id">
                                <div class="recommendation-item-hero">
                                    <div class="recommendation-choice">
                                        <v-card-text class="recommendation-choice-item" v-if="index === 0">Best choice
                                        </v-card-text>
                                        <v-card-text class="recommendation-choice-item" v-if="index === 1">Good choice
                                        </v-card-text>
                                        <v-card-text class="recommendation-choice-item" v-if="index === 2">Fair choice
                                        </v-card-text>
                                    </div>

                                    <v-img class="platform-image" :src="bestPlatform.image" aspect-ratio="1"></v-img>
                                </div>
                            </div>

                            <table>
                                <tr>
                                    <td><p>Comparisons Name</p></td>
                                    <td><p>Results</p></td>
                                    <!--<td><p>Comparisons Name</p></td><p>Platforms</p><td>-->
                                </tr>
                                <tr v-for="compareItem in platform.comparass" :key="compareItem.id">
                                    <td class="nameCompar"><p >{{compareItem.comparisonsNameTitle}}</p></td>
                                    <td>
                                        <img v-if="compareItem.stars" :src="compareItem.stars"/>
                                        <img v-if="compareItem.dollars" :src="compareItem.dollars"/>
                                        <p v-if="compareItem.text">{{compareItem.text}}</p>
                                    </td>
                                </tr>

                            </table>

                        </div>

                    </slick>



                </v-layout>

                <contactForm></contactForm>

            </v-container>


            <v-container v-else fill-height>
                <v-flex xs12 class="text-xs-center">
                    <v-progress-circular
                            :size="70"
                            :width="5"
                            color="#98ca3e"
                            indeterminate
                    ></v-progress-circular>
                </v-flex>
            </v-container>

    </div>
</template>

<script>
    /* eslint-disable */
    import Slick from 'vue-slick';
    import ContactForm from './ContactForm'

    export default {
        name: 'Result',

        components: {
            Slick,
            contactForm: ContactForm,
        },
        data() {
            return {
                resultQuiz: {},
                results: [],
                url: '',
                slickOptions: {
                    slidesToShow: 1,
                    dots: true,
                    arrows: false,
                    //centerMode: true,
                    infinite: true,
                    speed: 500,
                    fade: true,
                    cssEase: 'linear',

                },
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
                let store = this.$store.state.result;
                let storeResult = [];

                for (let keys in store) {
                    let storeValue = store[keys];
                    storeResult.push(storeValue.answerPoint)
                }

                if (Object.keys(storeResult).length === 0){
                    this.$router.push('/quiz'); //--------------------------- Redirect to quiz if result null
                } else {
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
                }
            },
        methods: {

            comparisonResult() {
                let sortRes = [];
                let allRes = [];
                let endResult = [];
                sortRes = this.sortResult(this.resultQuiz);
                allRes = this.results.data;

                let intermResult = [];
                if (allRes) {
                    let keys = Object.keys(allRes);
                    for (let i = 0; i < keys.length; i++) {
                        let val = allRes[keys[i]];
                        for (let key in val.platformsBlock) {

                            let value = val.platformsBlock[key];
                            //console.log(value);

                            intermResult.push(value)
                        }
                    }
                }

                //console.log(intermResult);

                for (let i = 0; i < sortRes.length; i++) {
                    for (let j = 0; j < intermResult.length; j++) {
                        if (sortRes[i].title === intermResult[j].platformsEntries) {
                            endResult.push(intermResult[j]);
                        }
                    }
                }


                //console.log(endResult);


                if (Object.keys(endResult).length !== 0) {

                    const res = {
                        resultQuiz: endResult,
                        key: ''
                    };


                    // this.$store.dispatch('createResult', res).then(() => {
                    //     const id = this.$store.getters.resultQuiz;
                    //     const last = id.pop();
                    //     this.url = window.location.href + '/' + last.id ;
                    //     //console.log(id)
                    //     //console.log(this.url)
                    //     //--------------------- IMPORTANT, THIS CONNECT TO FIREBASE
                    // });

                    this.reInit();
                    return endResult;

                }

            },
            sortResult(arr) {
                let longtext = Array.from(arr);
                return longtext.sort(function (b, a) {
                    return a.point - b.point;
                }).slice(0, 3);
            },
            next() {
                this.$refs.slick.next();
            },

            prev() {
                this.$refs.slick.prev();
            },

            reInit() {
                // Helpful if you have to deal with v-for to update dynamic lists
                //let currIndex = this.$refs.slick.currentSlide();

                // this.$refs.slick.destroy();
                // this.$nextTick(() => {
                //     this.$refs.slick.create();
                //     this.$refs.slick.goTo(currIndex, true)
                // })

            }
        },
        computed: {
            links() {
                return [
                    { title: 'Quiz', url: '/quiz' },
                ]
            }
        }

    }

</script>

<style scoped lang="scss">
    @import "~slick-carousel/slick/slick.css";
    @import "~slick-carousel/slick/slick-theme.css";

</style>
