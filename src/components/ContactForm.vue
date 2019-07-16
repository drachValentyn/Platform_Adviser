<template>

    <v-container>

        <v-form>

            <div class="errors" v-if="errors">
                {{ errors }}
            </div>

            <v-flex xs12>
                    <v-text-field
                            label="Name"
                            id="loginName"
                            type="text"
                            name="loginName"
                            v-model="theUser.name"
                    ></v-text-field>
                </v-flex>

            <v-flex xs12>
                    <v-text-field
                            label="Phone"
                            id="phone"
                            type="number"
                            name="phone"
                            v-model="theUser.phone"
                    ></v-text-field>
                </v-flex>


                <v-textarea
                        solo
                        v-model="theUser.subject"
                        name="describe"
                        id="describe"
                        label="Describe your question (optional)"
                ></v-textarea>

            <v-btn
                    @click="doLogin"
                    color="success"
            >
                send request
            </v-btn>

        </v-form>

        <router-link to="/">Home</router-link>

    </v-container>

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
            }
        },
        computed: {
            csrfName () {
                return window.csrfTokenName
            },
            csrfToken () {
                return window.csrfTokenValue
            }
        },
        methods: {
            doLogin () {
                let data = this.theUser;
                data[window.csrfTokenName] = window.csrfTokenValue;

                let headers = {
                    'Content-Type': 'multipart/form-data',
                };

                this.$http.post('http://craft-vue.local/', data, {headers: headers})
                    .then(function (response) {
                        console.log(response);
                        if (response.body.success) {
                            this.$router.go('/thank-you')
                        }
                        if (response.body.error) {
                            this.errors = response.body.error
                        }
                    })
            }
        }
    }
</script>

<style scoped>

</style>
