<template>

    <v-layout collumn wrap justify-center>
        <v-flex xs12 md6 lg4 offset-lg1>
            <div v-for="block in results.data" :key="block.id">
                <h2 class="contact-heading">{{block.titleForm}}</h2>
            </div>
        </v-flex>
        <v-flex xs12 md6 lg5 offset-lg1>

            <v-layout>
                <v-flex xs3>
                    <div v-for="data in footer" v-bind:key="data.index">
                        <div  v-for="block in data" :key="block.image">
                            <img :src="block.image" />
                        </div>
                    </div>
                </v-flex>
                <v-flex xs9>
                    <p>Please call us</p>
                    <div v-for="data in footer" v-bind:key="data.index">
                        <div  v-for="block in data" :key="block.phoneNumber">
                            <p class="phone">{{block.phoneNumber}}</p>
                        </div>
                    </div>
                    <!--<div v-for="block in results.data" :key="block.id">-->
                        <!--<p class="phone">{{block.phoneNumber}}</p>-->
                    <!--</div>-->
                </v-flex>
            </v-layout>
            <p>Or fill out the form below to request a callback</p>
            <v-form v-model="valid" ref="form" lazy-validation class="forms" autocomplete="off">

                <div class="errors" v-if="errors">
                    {{ errors }}
                </div>

                <v-text-field class="input"
                              label="Name"
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
                              label="E-mail"
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
                              type="number"
                              name="phone"
                              v-model="theUser.phone"
                ></v-text-field>

                <v-textarea
                        solo
                        v-model="theUser.subject"
                        name="describe"
                        id="describe"
                        label="Describe your question (optional)"
                ></v-textarea>

                <v-btn class="button-main"
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
        },
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
