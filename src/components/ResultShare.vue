<template>
    <div class="main-content">

        <router-link to="/" class="back-link result-link">Start again</router-link>

        <v-container v-if="res" grid-list-md>

            <v-layout row wrap text-xs-center class="capture-recomendation">

                <div class="result-hero-top">
                    <h2 class="result-hero-title">Recommendation</h2>
                    <p class="recommendation-descript">We think that the best solution for your goals is
                        {{finishResult[0].platformsEntries}}. Also
                        {{finishResult[1].platformsEntries}} and {{finishResult[2].platformsEntries}} are suitable.
                        Please find an explanation on why we think so below.</p>
                </div>

            </v-layout>

            <v-layout row wrap text-xs-center class="recommendation">
                <v-flex v-for="(platform, index) in finishResult"
                        :key="index"
                        xs12 md4>

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
                                       less-str="Read less" :max-chars="179"></read-more>
                            <a class="link-examples" target="_blank" :href="bestPlatform.linkToExample">site
                                examples</a>
                        </div>

                    </v-card>
                </v-flex>
            </v-layout>

            <div class="result-hero">
                <h2 class="result-hero-title">Comparision</h2>
            </div>


            <div class="result-table-wrap">

                <!--Result Table Head-->
                <v-layout class="result-table-head">

                    <v-flex xs5 sm4 md3 class="empty-head"></v-flex>

                    <v-flex xs7 sm8 md9 class="small-label-tabel">
                        <v-layout class="table-slick">

                            <slick class="slider-for"
                                   ref="slick"
                                   :options="slickOptionsTop"
                            >

                                <v-flex class="table_layout_head" v-for="(compItem, index2) in finishResult"
                                        :key="index2">

                                    <div class="table-header">
                                        <div class="table-choice">
                                            <div class="table-choice-item" v-if="index2 === 0">Best choice
                                            </div>
                                            <div class="table-choice-item" v-if="index2 === 1">Good choice
                                            </div>
                                            <div class="table-choice-item" v-if="index2 === 2">Fair choice
                                            </div>
                                        </div>

                                        <div class="table-image-wrap" v-for="descrItem in compItem.descr"
                                             :key="descrItem.image">
                                            <img class="table-image" :src="descrItem.image" alt="Log">
                                        </div>
                                    </div>

                                </v-flex>

                            </slick>
                        </v-layout>
                    </v-flex>
                </v-layout>
                <!--Result Table Head-->

                <!--Result Table Body-->
                <v-layout class="result-table-body">
                    <!--Left Column with comparison item-->
                    <v-flex xs5 sm4 md3 lg3 class="table_title-block">
                        <div class="compTitle"
                             v-for="(platform, index) in compTitle"
                             :key="index">
                            {{ platform }}
                        </div>
                    </v-flex>
                    <!--End Left Column with comparison item-->

                    <!--Main Table with Starts and Dollars-->
                    <v-flex xs7 sm8 md9 lg9 pa-0>
                        <slick
                                class="table-slick slider-nav"
                                ref="slick"
                                :options="slickOptionsBottom">

                            <v-flex text-center class="table_layout"
                                    v-for="(compItem, index2) in finishResult" :key="index2">

                                <div class="icon-block" v-for="compareItem in compItem.comparison"
                                     :key="compareItem.comparisonsNameTitle">

                                    <img v-if="compareItem.stars" :src="compareItem.stars" alt="Star"/>

                                    <img v-if="compareItem.dollars" :src="compareItem.dollars" alt="Dollar"/>

                                    <div v-if="compareItem.text">{{compareItem.text}}</div>

                                </div>

                            </v-flex>

                        </slick>
                    </v-flex>
                    <!--End Main Table with Starts and Dollars-->
                </v-layout>
                <!--End Result Table Body-->
            </div>

            <!--Share Block after Table-->
            <v-layout class="share-wrap">
                <button class="share_result"
                >share result</button>
<!--                <button-->
<!--                        class="share_result"-->
<!--                        type="button" @click="showModal">share result</button>-->
<!--                <modal v-show="isModalVisible" @close="closeModal" />-->
            </v-layout>
            <!--Share Block after Table-->

            <contactForm></contactForm>

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
    import Slick from 'vue-slick';
    import ContactForm from './ContactForm'

    export default {

        name: 'ResultShare',
        props: ['id'],

        data() {
            return {
                isModalVisible: false,
                resultShare: {},
                results: [],
                finishResult: [],
                storeRes: {},
                url: '',
                compTitle: [],
                slickOptionsTop: {
                    slidesToShow: 3,
                    dots: false,
                    arrows: false,
                    asNavFor: ".slider-nav",
                    infinite: false,
                    responsive: [
                        {
                            breakpoint: 768,
                            settings: {
                                dots: true,
                                slidesToShow: 2,
                                slidesToScroll: 2
                            }
                        },
                        {
                            breakpoint: 520,
                            settings: {
                                dots: true,
                                slidesToShow: 1
                            }
                        }
                    ],
                    // speed: 300,
                    // fade: true,
                    // cssEase: 'linear',

                },
                slickOptionsBottom: {
                    slidesToShow: 3,
                    dots: false,
                    arrows: false,
                    asNavFor: ".slider-for",
                    infinite: false,
                    responsive: [
                        {
                            breakpoint: 768,
                            settings: {
                                slidesToShow: 2,
                                slidesToScroll: 2
                            }
                        },
                        {
                            breakpoint: 520,
                            settings: {
                                slidesToShow: 1
                            }
                        }
                    ],
                    // speed: 300,
                    // fade: true,
                    // cssEase: 'linear',

                },
            }
        },
        components: {
            Slick,
            contactForm: ContactForm,
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

        computed: {
            res() {
                const id = this.id;
                this.storeRes = this.$store.getters.ResultById(id);
                if (this.storeRes) {
                    this.showRes();
                    return true;
                }
            },
            links() {
                return [
                    {title: 'Quiz', url: '/quiz'},
                ]
            },
        },

        methods: {

            showRes() {

                let storeResult = this.storeRes;

                if (Object.keys(storeResult).length !== 0) {

                    //-------------For Sorting Comparison Item
                    let firstSort = storeResult.resultQuiz;
                    let arrSort;
                    let arrSort1;
                    let arrSort2 = [];
                    for (let sortKey in firstSort) {
                        arrSort = firstSort[sortKey];
                    }
                    for (let key in arrSort.comparison) {
                        arrSort1 = arrSort.comparison[key];
                        arrSort2.push(arrSort1.comparisonsNameTitle)
                    }

                    this.compTitle = arrSort2;
                    this.finishResult = storeResult.resultQuiz;

                }
            },

            next() {
                this.$refs.slick.next();
            },
            prev() {
                this.$refs.slick.prev();
            },


        },


    }

</script>


<style scoped lang="scss">
    @import "~slick-carousel/slick/slick.css";
    @import "~slick-carousel/slick/slick-theme.css";
    @import "../assets/scss/base/variables.scss";
    @import "../assets/scss/base/mixins.scss";

    @media all and (max-width: 375px) {
        .container {
            padding: 0 8px !important;
        }
    }

    @media all and (max-width: 520px) {
        .small-label-tabel {
            max-width: 100% !important;
        }
    }

    .share-wrap {
        margin: auto 0 50px !important;
        justify-content: center;
        border-radius: 0 0 8px 8px;
        background-color: #464085;

        .share_result {
            padding: 12px 0;
            color: #98ca3e;
            font-family: $additional-font;
            font-size: 18px;
            font-weight: 400;
            letter-spacing: 2px;
            line-height: 1.33;
            text-transform: uppercase;
            display: flex;

            &:before {
                content: url(../assets/images/share_icon.png);
                padding-right: 20px;
                display: inline-block;
            }
        }

        @media (min-width: 768px) {
            margin: auto 0 8.6vw !important;
        }
        @media (min-width: 1921px) {
            margin: auto 0 165px !important;
        }
    }

    .result-table-wrap {
        border-radius: 8px 8px 0 0;
        background-color: #f6f5ff;
        @media (max-width: 768px) {
            overflow: hidden;
        }

        .result-table-head {
            margin: auto 0 !important;
            border-radius: 8px 8px 0 0;
            background-color: #e8e6ff;

            .table_layout_head {
                height: inherit;
                padding: 0;
            }

            .table-header {
                padding: 8px 0 30px;

                .table-choice {
                    text-align: center;

                    &-item {
                        color: #6130f0;
                        font-family: $main-font;
                        font-size: 16px;
                        font-weight: 700;
                        line-height: 24px;
                    }
                }

                .table-image-wrap {
                    text-align: center;
                    max-width: 100px;
                    margin: auto;
                    padding-top: 20px;

                    img {
                        max-width: 100%;
                        height: auto;
                    }
                }
            }

            @media all and (min-width: 768px) {
                .empty-head {
                    max-width: 300px;
                    border-right: 1px solid rgba(97, 48, 240, 0.2);
                }
                border-bottom: 1px solid rgba(97, 48, 240, 0.2);
                .table-image-wrap {
                    max-width: 140px;
                }
            }
        }

        .result-table-body {
            margin: auto 0 !important;
            width: 100%;

            .table_title-block {
                padding: 0;

                .compTitle {
                    margin-right: -1px;
                    padding: 12px 13px 12px 16px;
                    color: #110a29;
                    font-family: $main-font;
                    font-size: 16px;
                    line-height: 24px;
                    white-space: nowrap;
                    overflow: hidden;
                    text-overflow: ellipsis;

                    &:not(:last-child) {
                        border-bottom: 1px solid rgba(97, 48, 240, 0.2);
                    }
                }

                @media all and (max-width: 768px) {
                    box-shadow: 20px 0 20px -20px rgba(0, 0, 0, 0.1);
                }
                @media all and (min-width: 768px) {
                    max-width: 300px;
                    .compTitle {
                        border-right: 1px solid rgba(97, 48, 240, 0.2);
                        padding: 12px 0 12px 24px;
                    }
                }
            }
        }

        .table_layout {
            padding: 0 !important;

            .icon-block {
                color: #6130f0;
                font-family: $main-font;
                font-size: 14px;
                font-weight: 400;
                padding: 12px 0;
                min-height: 49px;
                display: flex;
                justify-content: center;
                align-items: center;

                &:not(:last-child) {
                    border-bottom: 1px solid rgba(97, 48, 240, 0.2);
                }
            }

            &:not(:last-child) {
                border-right: 1px solid rgba(97, 48, 240, 0.2);
            }
        }

    }


</style>

