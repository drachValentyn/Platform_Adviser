<template>

    <v-layout collumn wrap>
        <v-flex xs12 md6>
            <h2 class="contact-heading">Need more detailed advice or a project cost estimate?</h2>
        </v-flex>
        <v-flex xs12 md6>
            <v-form v-model="valid" ref="form" lazy-validation class="forms">

                <div class="errors" v-if="errors">
                    {{ errors }}
                </div>

                <!--<v-flex xs12>-->
                    <v-text-field class="input"
                            label="Name"
                            id="name"
                            type="text"
                            name="name"
                            v-model="theUser.name"
                            :rules="nameRules"
                            required
                    ></v-text-field>
                <!--</v-flex>-->

                <!--<v-flex xs12>-->
                    <v-text-field class="input"
                            label="E-mail"
                            id="email"
                            type="email"
                            name="email"
                            v-model="theUser.email"
                            :rules="emailRules"
                            required
                    ></v-text-field>
                <!--</v-flex>-->

                <!--<v-flex xs12>-->
                    <v-text-field class="input"
                            label="Phone"
                            id="phone"
                            type="number"
                            name="phone"
                            v-model="theUser.phone"
                    ></v-text-field>
                <!--</v-flex>-->


                <v-textarea
                        solo
                        v-model="theUser.subject"
                        name="describe"
                        id="describe"
                        label="Describe your question (optional)"
                ></v-textarea>

                <v-btn class="back-link"
                        @click="sendForm"
                        color="success"
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

    export default {
        name: "ContactForm",
        data () {
            return {
                theUser: {
                    action: '/wheelform/message/send',
                    CRAFT_CSRF_TOKEN: window.csrfTokenValue,
                    form_id: 1,
                    name: null,
                    phone: null,
                    subject: null,
                },
                errors: null,
                message: null,
                valid: false,
                emailRules:[
                    v => !!v || 'E-mail is required',
                    v => /.+@.+/.test(v) || 'E-mail must be valid'
                ],
                nameRules:[
                    v => !!v || 'Name is required',
                ],
            }
        },

        computed: {
            loading(){
                return this.$store.getters.loading
            },
            csrfName () {
                return window.csrfTokenName
            },
            csrfToken () {
                return window.csrfTokenValue
            }
        },
        methods: {
            sendForm () {
                if (this.$refs.form.validate()) {
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
                            if (response.body.error) {
                                this.errors = response.body.error
                            }
                        })
                }
            }
        }
    }
</script>

<style scoped>

</style>
