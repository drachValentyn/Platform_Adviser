<template>
    <v-container grid-list-md text-xs-center>
        <v-layout row wrap>

            <v-flex xs12 v-for="(info, index) in shareLink()" :key="index">

                <h1>{{info.title}}</h1>
                <p>{{info.subtitleThanksPage}}</p>

                <v-btn to="/contact">
                    visit our website
                </v-btn>

                <h4>{{info.shareText}}</h4>
            </v-flex>
            <social-sharing

                    :title="shareInfo.title"
                    :description="shareInfo.description"
                    :quote="shareInfo.quote"
                    v-cloak
                    inline-template>

                <v-flex xs12>

                    <network network="facebook" id="facebook">
                        <v-btn dark>
                            <v-icon>fab fa-facebook-f</v-icon>
                        </v-btn>
                    </network>

                    <network dark network="twitter" id="twitter">
                        <v-btn dark>
                            <v-icon>fab fa-twitter</v-icon>
                        </v-btn>
                    </network>

                </v-flex>
            </social-sharing
            >

        </v-layout>

    </v-container>
</template>

<script>

    export default {
        name: "ThankYou",
        data() {
            return {
                results: '',
                shareInfo: {
                    title: '',
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

                    this.shareInfo.title = value.infoWithShareLink[0].titleLink;
                    this.shareInfo.description = value.infoWithShareLink[0].descriptionLink;
                    this.shareInfo.quote = value.infoWithShareLink[0].quoteLink;

                }
                //console.log(this.shareInfo);
                return infoResult
            }
        }
    }
</script>

<style scoped>

</style>
