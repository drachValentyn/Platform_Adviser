<template>
    <div class="main-content thank-content" >
        <div v-for="(info, index) in infoPage.data" :key="index">
            <div class="logo404">
                <a href="http://pixelgrow.com/" target="_blank">
                    <img :src="info.image" alt="Pixel Grow Logo">
                </a>
            </div>
            <v-container grid-list-md text-xs-center>
                <v-layout row wrap>
                    <v-flex xs12 class="not-found-block">

                        <h1 class="thank-title">Great, you found our 404 page, which we lost!</h1>
                        <p class="thank-subtitle">Now you have one more chance to start again!</p>
                        <router-link to="/" class="button-404">
                            Go to start page
                        </router-link>

                    </v-flex>


                </v-layout>

            </v-container>
        </div>

    </div>

</template>

<script>

    export default {
        data() {
            return{
                infoPage:[]
            }
        },
        created() {
            this.$http.get('api/footer.json')
                .then(response => {
                        return response.json();
                    }, response => {
                        console.log(response)
                    }
                )
                .then(response => {
                    this.infoPage = response;
                });
        },
    }
</script>

<style scoped lang="scss">
    @import "../assets/scss/base/variables.scss";
    @import "../assets/scss/base/mixins.scss";

    .logo404{
        text-align: center;
        margin-top: 50px;
    }
    .not-found-block{
        max-width: 888px;
        margin: 0 auto;
    }

    .thank-subtitle {
        margin-bottom: 48px;
        font-family: $main-font;
        font-size: 18px;
        line-height: 24px;
        @media all and (min-width: 960px) {
            margin-bottom: 80px;
            line-height: 28px;
        }
    }



    .button-404{
        height: 60px;
        border-radius: 8px;
        margin: 0 auto 16px;
        font-family: $additional-font;
        font-weight: 400;
        font-size: 24px;
        background-color: #98ca3e;
        color: #221f44;
        max-width: 264px;
        align-items:center;
        display:flex;
        flex:1 0 auto;
        justify-content:center;
        position:relative;
        transition: .5s all;
        text-decoration: none;
        &:hover {
            background-color: #E8E6FF;
        }
    }






</style>

