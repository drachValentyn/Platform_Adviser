<template>
    <div class="main-content thank-content">
        <div class="esc-link">
            <router-link to="/"></router-link>
        </div>
        <div class="thank-you-logo">
            <a href="http://pixelgrow.com/" target="_blank">
                <img src="../assets/images/pg-logo.svg" alt="Pixel Grow Logo">
            </a>
        </div>
        <v-container grid-list-md text-xs-center>
            <v-layout row wrap>
                <v-flex xs12 v-for="(info, index) in shareLink()" :key="index">

                    <h1 class="thank-title">{{info.title}}</h1>
                    <p class="thank-subtitle">{{info.subtitleThanksPage}}</p>
                    <v-btn href="http://pixelgrow.com/" target="_blank" class="button-main">
                        visit our website
                    </v-btn>

                    <h4 class="thank-shareText">{{info.shareText}}</h4>
                </v-flex>

                <social-sharing
                        :url="shareInfo.url"
                        :title="shareInfo.title"
                        :description="shareInfo.title"
                        :quote="shareInfo.title"
                        v-cloak
                        inline-template>
                    <v-flex xs12>

                        <network network="facebook" id="facebook">
                            <v-btn>
                                <v-icon>fab fa-facebook-f</v-icon>
                            </v-btn>
                        </network>

                        <network network="twitter" id="twitter">
                            <v-btn>
                                <v-icon>fab fa-twitter</v-icon>
                            </v-btn>
                        </network>

                    </v-flex>
                </social-sharing
                >

            </v-layout>

        </v-container>
    </div>

</template>

<script>

    export default {
        name: "ThankYou",
        data() {
            return {
                results: '',
                shareInfo: {
                    title: '',
                    url: document.location.origin,
                    description: '',
                    quote: '',
                }
            }
        },
        mounted() {
            this.$store.dispatch('loadShareInfo').then(result => {
                this.results = result;
            });

        },
        methods: {
            shareLink() {
                let infoResult = this.$store.getters.shareInfo;
                //console.log(infoResult);
                for (let key in infoResult) {

                    let value = infoResult[key];

                    this.shareInfo.title = value.infoWithShareLink[0].textForShareQuiz;
                    //this.shareInfo.description = value.infoWithShareLink[0].descriptionLink;
                    //this.shareInfo.quote = value.infoWithShareLink[0].quoteLink;

                }
                //console.log(this.shareInfo);
                return infoResult
            }
        }
    }
</script>

<style scoped>
 .thank-you-logo{
     text-align: center;
 }
</style>
