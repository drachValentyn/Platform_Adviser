<template>

    <v-layout collumn wrap justify-center>
        <v-flex xs12 md6 lg4 offset-lg1>
            <div v-for="block in results.data" :key="block.id">
                <h2 class="contact-heading">{{block.titleForm}}</h2>
            </div>
        </v-flex>
        <v-flex xs12 md6 lg5 offset-lg1>

            <v-layout class="form-caption">
                <v-flex xs1 md2 class="pixelgrow-logo">
                    <div v-for="data in footer" v-bind:key="data.index">
                        <div v-for="block in data" :key="block.image">
                            <img :src="block.image"/>
                        </div>
                    </div>
                </v-flex>
                <v-flex xs9 sm5 md9>
                    <p>Please call us</p>
                    <div v-for="data in footer" v-bind:key="data.index">
                        <div v-for="block in data" :key="block.phoneNumber">
                            <a :href="'tel:'+block.phoneNumber" class="phone">{{block.phoneNumber}}</a>
                        </div>
                    </div>
                    <!--<div v-for="block in results.data" :key="block.id">-->
                    <!--<p class="phone">{{block.phoneNumber}}</p>-->
                    <!--</div>-->
                </v-flex>
            </v-layout>
            <p text-sm-center class="form-text">Or fill out the form below to request a callback</p>
            <v-form v-model="valid" ref="form" lazy-validation class="forms" autocomplete="off" justify-center
            >


                <v-text-field class="input"
                              label="Name *"
                              filled
                              solo
                              id="name"
                              type="text"
                              name="name"
                              v-model="theUser.name"
                              :rules="nameRules"
                              required
                ></v-text-field>

                <v-text-field class="input"
                              label="E-mail *"
                              id="email"
                              solo
                              type="email"
                              name="email"
                              v-model="theUser.email"
                              :rules="emailRules"
                              required
                ></v-text-field>

                <v-text-field class="input"
                              label="Phone"
                              solo
                              id="phone"
                              type="phone"
                              name="phone"
                              v-model="theUser.phone"
                ></v-text-field>

                <v-text-field class="input"
                              id="link"
                              type="text"
                              name="link"
                              :value="link"
                              style="display: none"
                ></v-text-field>

                <v-textarea
                        solo
                        auto-grow
                        v-model="theUser.subject"
                        rows="1"
                        name="describe"
                        id="describe"
                        label="Describe your question (optional)"
                ></v-textarea>

                <div class="v-text-field__details" v-if="errors">
                    <div class="v-messages theme--light error--text">
                        <div class="v-messages__wrapper">
                            <div class="v-messages__message" v-for="(err,index) in errors">
                                {{ err.toString() }}
                            </div>
                        </div>
                    </div>
                </div>



                <v-btn class="button-main button-main-form"
                       @click="sendForm"
                       :loading="loading"
                       :disabled="!valid || loading"
                >
                    send request
                </v-btn>

            </v-form>


        </v-flex>


    </v-layout>

</template>

<script>
    import Footer from './Footer'

    export default {
        name: "ContactForm",
        data() {
            return {
                footer: [],
                theUser: {
                    action: '/wheelform/message/send',
                    CRAFT_CSRF_TOKEN: window.csrfTokenValue,
                    form_id: 1,
                    name: null,
                    phone: null,
                    subject: null,
                    link: null,
                },
                link: null,
                errors: null,
                message: null,
                valid: false,
                emailRules: [
                    v => !!v || 'E-mail is required',
                    v => /.+@.+/.test(v) || 'E-mail must be valid'
                ],
                nameRules: [
                    v => !!v || 'Name is required',
                ],
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
            this.$http.get('api/footer.json')
                .then(response => {
                        return response.json();
                    }, response => {
                        console.log(response)
                    }
                )
                .then(response => {
                    this.footer = response;
                });
        },
        computed: {
            loading() {
                return this.$store.getters.loading
            },
            csrfName() {
                return window.csrfTokenName
            },
            csrfToken() {
                return window.csrfTokenValue
            }
        },
        methods: {
            sendForm() {
                if (this.$refs.form.validate()) {
                    this.theUser.link = this.link;
                    // this.theUser.subject += ' ' + this.url;
                    //this.message = this.url;
                    let data = this.theUser;
                    data[window.csrfTokenName] = window.csrfTokenValue;

                    let headers = {
                        'Content-Type': 'multipart/form-data',
                    };

                    this.$http.post('/', data, {headers: headers})
                        .then(function (response) {
                            console.log(response);
                            if (response.body.success) {
                                this.$router.push('/thank-you')
                            }
                            if (response.body.errors) {
                                this.errors = response.body.errors
                            }
                        })
                }
            }
        }
    }
</script>

<style scoped>
    .pixelgrow-logo {
        margin-bottom: 45px;
    }

</style>
