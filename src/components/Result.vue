<template>
    <div class="main-content">

{{comparisonResult()}}
        <router-link to="/quiz" class="back-link result-link">Start again</router-link>
        <!--<v-container v-if="comparisonResult()" grid-list-md>
            <v-layout row wrap text-xs-center text-md-center class="capture-recomendation">

                <div class="result-hero-top">
                    <h2 class="result-hero-title">Recommendation</h2>
                    <p class="recommendation-descript">We think that the best solution for your goals is
                        {{finishResult[0].platformsEntries}}. Also
                        {{finishResult[1].platformsEntries}} and {{finishResult[2].platformsEntries}} are suitable.
                        Please find an explanation on why we think so below.</p>
                </div>

                <router-link to="/change-result" class="back-link back-change-link">Change answers</router-link>

            </v-layout>

            <v-layout row wrap text-xs-center class="recommendation">

                <v-flex v-for="(platform, index) in finishResult"
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

                &lt;!&ndash;Result Table Head&ndash;&gt;
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
                &lt;!&ndash;Result Table Head&ndash;&gt;

                &lt;!&ndash;Result Table Body&ndash;&gt;
                <v-layout class="result-table-body">
                    &lt;!&ndash;Left Column with comparison item&ndash;&gt;
                    <v-flex xs5 sm4 md3 lg3 class="table_title-block">
                        <div class="compTitle"
                             v-for="(platform, index) in compTitle"
                             :key="index">
                            {{ platform }}
                        </div>
                    </v-flex>
                    &lt;!&ndash;End Left Column with comparison item&ndash;&gt;

                    &lt;!&ndash;Main Table with Starts and Dollars&ndash;&gt;
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
                    &lt;!&ndash;End Main Table with Starts and Dollars&ndash;&gt;
                </v-layout>
                &lt;!&ndash;End Result Table Body&ndash;&gt;
            </div>


            &lt;!&ndash;Share Block after Table&ndash;&gt;
            <v-layout class="share-wrap">

                <a href="#share_result" class="link share_result">share result</a>

                <div data-ml-modal class="modal-backdrop" id="share_result">
                    <a href="#!" class="modal-overlay"></a>
                    <div class="modal" ref="modal">
                        <header class="modal-header">
                            <slot name="header">
                                <div class="wrap-btn-close">
                                    <a href="#!"
                                       class="btn-close btn-right"
                                       aria-label="Close modal">
                                    </a>
                                </div>

                                <h2 class="modal-header-title">
                                    Share link with this results
                                </h2>
                            </slot>
                        </header>

                        <section class="modal-body">
                            <slot name="body">
                                <social-sharing inline-template
                                                @copy="copyToClipboard"
                                                :url="shareInfo.url"
                                                :title="shareInfo.title"
                                                :description="shareInfo.description"
                                                :quote="shareInfo.quote"
                                                :networks="{copyingLinkText:copyingLinkText}"
                                                v-cloak>

                                    <div class="sharing-block">
                                        <input id="ourUrl" :value="url" :style="{opacity: 0, position: 'absolute', zIndex: -1}"/>
                                        &lt;!&ndash;<network network="link">&ndash;&gt;
                                        <div class="tooltip tooltip-left sharing-item" :data-description="networks.copyingLinkText" @click="$emit('copy')">

                                            <svg class="share-links" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg">
                                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <path d="M3.9,12 C3.9,10.29 5.29,8.9 7,8.9 L11,8.9 L11,7 L7,7 C4.24,7 2,9.24 2,12 C2,14.76 4.24,17 7,17 L11,17 L11,15.1 L7,15.1 C5.29,15.1 3.9,13.71 3.9,12 Z M8,13 L16,13 L16,11 L8,11 L8,13 Z M17,7 L13,7 L13,8.9 L17,8.9 C18.71,8.9 20.1,10.29 20.1,12 C20.1,13.71 18.71,15.1 17,15.1 L13,15.1 L13,17 L17,17 C19.76,17 22,14.76 22,12 C22,9.24 19.76,7 17,7 Z" class="hover-icon" fill="#98CA3E"></path>
                                                </g>
                                            </svg>
                                        </div>
                                        &lt;!&ndash;</network>&ndash;&gt;


                                        <div class="tooltip tooltip-centre sharing-item" data-description="Send email!">
                                            <network network="email">
                                                <svg class="share-links" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg">
                                                    <g id="ic-email-24px" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <path d="M20,4 L4,4 C2.9,4 2.01,4.9 2.01,6 L2,18 C2,19.1 2.9,20 4,20 L20,20 C21.1,20 22,19.1 22,18 L22,6 C22,4.9 21.1,4 20,4 Z M20,8 L12,13 L4,8 L4,6 L12,11 L20,6 L20,8 Z" class="hover-icon" fill="#98CA3E"></path>
                                                    </g>
                                                </svg>
                                            </network>
                                        </div>

                                        <network network="facebook" class="sharing-item">
                                            <svg class="share-links" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg">
                                                <g id="ic-facebook-24px" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <path class="hover-icon" d="M17.5857723,2.0043694 L14.9473725,2 C11.9832208,2 10.0676557,4.02849474 10.0676557,7.16812834 L10.0676557,9.55098155 L7.41486271,9.55098155 C7.18562989,9.55098155 7,9.74279829 7,9.97940139 L7,13.4318841 C7,13.6684873 7.18584156,13.8600855 7.41486271,13.8600855 L10.0676557,13.8600855 L10.0676557,22.5717986 C10.0676557,22.8084017 10.2532856,23 10.4825184,23 L13.9436587,23 C14.1728915,23 14.3585214,22.8081833 14.3585214,22.5717986 L14.3585214,13.8600855 L17.4602552,13.8600855 C17.689488,13.8600855 17.8751179,13.6684873 17.8751179,13.4318841 L17.8763878,9.97940139 C17.8763878,9.86579695 17.8325733,9.75699885 17.7548923,9.67660185 C17.6772114,9.59620486 17.5713791,9.55098155 17.4613135,9.55098155 L14.3585214,9.55098155 L14.3585214,7.53100715 C14.3585214,6.56012609 14.5826743,6.06725758 15.8080009,6.06725758 L17.585349,6.06660217 C17.8143701,6.06660217 18,5.87478543 18,5.6384008 L18,2.43257077 C18,2.19640461 17.8145818,2.00480634 17.5857723,2.0043694 Z" fill="#98CA3E"></path>
                                                </g>
                                            </svg>
                                        </network>

                                        <network network="twitter" class="sharing-item">
                                            <svg class="share-links" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg">
                                                <g id="ic-twitter-24px" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <path class="hover-icon" d="M23,6.0113675 C22.2270821,6.35268819 21.3977523,6.58416798 20.5263881,6.68751144 C21.4161102,6.15653395 22.0971701,5.31432916 22.4199598,4.31386046 C21.58538,4.80557975 20.6641579,5.16263108 19.6825779,5.35618635 C18.8965521,4.5205132 17.7785062,4 16.5384061,4 C14.1592944,4 12.2302765,5.92245519 12.2302765,8.2921735 C12.2302765,8.62826205 12.2683305,8.95651947 12.3418306,9.27041413 C8.76201105,9.09122162 5.58767743,7.3819508 3.46313965,4.78465116 C3.09176159,5.41763843 2.88049163,6.15520026 2.88049163,6.94251879 C2.88049163,8.43210781 3.64160562,9.74643697 4.79640163,10.5153917 C4.09039557,10.4918641 3.42638959,10.2983089 2.84507981,9.97658307 L2.84507981,10.030204 C2.84507981,12.1095895 4.33055773,13.845021 6.30023742,14.2399969 C5.93935938,14.3367745 5.55881954,14.3903955 5.16513752,14.3903955 C4.8869557,14.3903955 4.61793565,14.3629352 4.35416561,14.3106138 C4.90267141,16.0172856 6.4931495,17.2583647 8.37755944,17.2923908 C6.90388546,18.4432581 5.04572556,19.1272331 3.02749187,19.1272331 C2.67975601,19.1272331 2.33723585,19.1063045 2,19.06838 C3.9067139,20.2885647 6.17035976,21 8.6032755,21 C16.5279747,21 20.8597465,14.4584134 20.8597465,8.78522647 L20.8453004,8.22942193 C21.6916841,7.62779335 22.4239059,6.8719019 23,6.0113675 Z" fill="#98CA3E"></path>
                                                </g>
                                            </svg>
                                        </network>

                                        <network network="linkedin" class="sharing-item">
                                            <svg class="share-links" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg">
                                                <g id="ic-linkedin-24px" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <path class="hover-icon" d="M22,14.6488849 L22,22 L17.7133524,22 L17.7133524,15.1412183 C17.7133524,13.4182364 17.0933351,12.2423687 15.5417107,12.2423687 C14.3572423,12.2423687 13.6523644,13.0348173 13.3422627,13.8013781 C13.2291772,14.0754206 13.2000688,14.4568518 13.2000688,14.8404558 L13.2000688,22 L8.91197976,22 C8.91197976,22 8.96973149,10.383475 8.91197976,9.1799164 L13.1996503,9.1799164 L13.1996503,10.9971119 C13.190955,11.0107031 13.1796558,11.0253575 13.1714719,11.0385327 L13.1996503,11.0385327 L13.1996503,10.9971119 C13.7693093,10.1248266 14.7866604,8.87873782 17.0638082,8.87873782 C19.8850406,8.87873782 22,10.7110501 22,14.6488849 Z M4.42645606,3 C2.95950637,3 2,3.95660605 2,5.2145756 C2,6.44513165 2.93174648,7.43076919 4.36954131,7.43076919 L4.39818468,7.43076919 C5.89354524,7.43076919 6.82352476,6.44531657 6.82352476,5.2145756 C6.79534638,3.95660605 5.89354524,3 4.42645606,3 Z M2.25467489,22 L6.54113648,22 L6.54113648,9.1799164 L2.25467489,9.1799164 L2.25467489,22 Z" id="LinkedIn" fill="#98CA3E"></path>
                                                </g>
                                            </svg>
                                        </network>

                                    </div>
                                </social-sharing>
                            </slot>
                        </section>
                    </div>
                </div>
            </v-layout>
            &lt;!&ndash;Share Block after Table&ndash;&gt;

            &lt;!&ndash;<contactForm :url="url"></contactForm>&ndash;&gt;
            <contactForm url="url"></contactForm>

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

        <v-container class="result-footer">
            <v-footer color="transparent">
                <footers></footers>
            </v-footer>
        </v-container>-->


    </div>
</template>

<script>

    import Slick from 'vue-slick';
    import ContactForm from './ContactForm';
    import Footer from './Footer';

    export default {

        name: 'Result',
        data() {
            return {
                isModalVisible: false,
                copyingLinkText: 'Copy link!',
                finishResult: [],
                compTitle: [],
                resultQuiz: {},
                results: [],
                shareInfo: {
                    title: '',
                    url: '',
                    description: '',
                    quote: '',
                },
                id: '',
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

                },
            }
        },
        components: {
            Slick,
            contactForm: ContactForm,
            footers: Footer,
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
                    this.results = results||[];

                });
        },
        mounted:
            function () {

                let store = this.$store.state.result;
                let storeResult = [];

                this.shareLink();

                for (let keys in store) {
                    let storeValue = store[keys];
                    storeResult.push(storeValue.answerPoint)
                }

                if (Object.keys(storeResult).length === 0) {
                    //this.$router.push('/quiz'); //--------------------------- Redirect to quiz if result null
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

                if (Object.keys(endResult).length !== 0) {

                    const res = {
                        resultQuiz: endResult,
                        key: ''
                    };

                    function myFunction(key, callback){
                        if(typeof key === 'undefined'){
                            callback(true);
                        }else{
                            callback(false);
                        }
                    }

                    var ttt;

                   var tt = this.$store.dispatch('createResult', res)
                        .then(response => {
                            myFunction(response, function (){
                                if(response){
                                    console.log(response)
                                    ttt = window.location.href + '/' + response;
                                    //alert("do stuff for when value is response");
                                }else {
                                    //this condition is satisfied as 0 passed
                                    alert("do stuff for when value is false response");
                                }
                            });
                            //myFunction(response);
                            return ttt;
                        })


                    // function test(key){
                    //         //console.log(key)
                    //         this.shareInfo.url = window.location.href + '/' + key;
                    // }



                    console.log(tt.valueOf());


                    this.shareInfo.url = tt.valueOf()
                    console.log(this.shareInfo.url);
                    //console.log(this.shareInfo.url);

                        //.then( keyFB => {
                        //console.log( ppp )
                    //});
                    // if (this.id) {
                    //     const last = this.id.pop();
                    //
                    //     console.log(window.location.href + '/' + last.id);
                    //     this.shareInfo.url = window.location.href + '/' + last.id;
                    // }

                    //-------------For Sorting Comparison Item
                    let firstSort = endResult;
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
                    this.finishResult = endResult;

                    // this.callback(key, function(){
                    //     if(key.length > 5) {
                    //         return key;
                    //     }
                    // });
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
            copyToClipboard(event) {

                let copyText = document.getElementById("ourUrl");
                copyText.select();
                document.execCommand("copy");

                this.copyingLinkText = 'Link copied!';

                setTimeout(()=>{
                    this.copyingLinkText = 'Copy link!';
                }, 500)
            },

            shareLink() {

                this.$store.dispatch('loadShareInfo');

                let infoResult = this.$store.getters.shareInfo;

                //console.log(infoResult);
                for (let key in infoResult) {

                    let value = infoResult[key];
                    this.shareInfo.title = value.infoWithShareLink[0].titleLink;
                    this.shareInfo.description = value.infoWithShareLink[0].descriptionLink;
                    this.shareInfo.quote = value.infoWithShareLink[0].quoteLink;

                }
            },
            // callback(key, callbackF) {
            //     if(key.length > 5) {
            //         console.log(key);
            //         return key;
            //     } else {
            //         callbackF(key)
            //     }
            // }

        },

        computed: {
            links() {
                return [
                    {title: 'Quiz', url: '/quiz'},
                ]
            },
        },


    }

</script>

<style scoped lang="scss">
    @import "~slick-carousel/slick/slick.css";
    @import "~slick-carousel/slick/slick-theme.css";
    @import "../assets/scss/base/variables.scss";
    @import "../assets/scss/base/mixins.scss";

    /*@media all and (max-width: 375px) {*/
        /*.container {*/
            /*padding: 0 8px !important;*/
        /*}*/
    /*}*/

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
            outline: none;

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


    /* Modals
----------------------------------------------*/
    [data-ml-modal] {
        position:fixed;
        top:0;
        bottom:0;
        left:0;
        right:0;
        overflow-x:hidden;
        overflow-y:auto;
        -webkit-overflow-scrolling:touch;
        z-index:999;
        width:0;
        height:0;
        opacity:0;
    }
    [data-ml-modal]:target {
        width:auto;
        height:auto;
        opacity:1;
        -webkit-transition:  opacity 1s ease;
        transition: opacity 1s ease;
    }
    [data-ml-modal]:target .modal-overlay {
        position:fixed;
        top:0;
        bottom:0;
        left:0;
        right:0;
        cursor:pointer;
        background-color:#000;
        background-color:rgba(0, 0, 0, 0.7);
        z-index:1;
    }
    [data-ml-modal] .modal-dialog {
        border-radius:6px;
        box-shadow:0 11px 15px -7px rgba(0, 0, 0, 0.2), 0 24px 38px 3px rgba(0, 0, 0, 0.14), 0 9px 46px 8px rgba(0, 0, 0, 0.12);
        position:relative;
        width: 90%;
        max-width:660px;
        max-height:70%;
        margin:10% auto;
        overflow-x:hidden;
        overflow-y:auto;
        z-index:2;
    }
    .modal-dialog-lg {max-width:820px !important;}

    [data-ml-modal] .modal-dialog > h3 {
        background-color:#eee;
        border-bottom:1px solid #b3b3b3;
        font-size:24px;
        font-weight: 400;
        margin:0;
        padding:0.8em 56px .8em 27px;
    }
    [data-ml-modal] .modal-content {background:#fff; padding:23px 27px;}
    [data-ml-modal] .modal-close {
        position:absolute;
        top:13px;
        right:13px;
        color:#0085a6;
        background-color:#fff;
        border-radius:50%;
        height:40px;
        width:40px;
        font-size:30px;
        line-height:37px;
        text-align:center;
        -webkit-transition: all .3s ease-in-out;
        transition: all .3s ease-in-out;
    }
    [data-ml-modal] .modal-close:hover {background-color:#0085a6; color:#fff; cursor:pointer;}
    [data-ml-modal] p:first-child, [data-ml-modal] p:last-child {margin:0;}
    @media (max-width:767px) {
        [data-ml-modal] .modal-dialog {margin:20% auto;}
    }
    /* End Modals ------------------------------*/

</style>
