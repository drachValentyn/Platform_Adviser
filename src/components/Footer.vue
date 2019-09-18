<template>

        <v-container fill-height>
            <v-layout row justify-center class="foooter">

                <v-flex xs12 text-center v-for="data in footer"
                        v-bind:key="data.id"
                        class="d-flex justify-center align-end"
                >
                    <div v-for="block in data"
                         :key="block.id">
                        <div v-for="links in block.link"
                             :key="links.id">
                            <div class="footer-wrap">
                                <p class="footer">Created by
                                    <a class="footer-link" :href="links.linkBody"> {{links.linkName}}</a>
                                    — Design & Development Studio
                                </p>
                            </div>

                        </div>
                    </div>
                </v-flex>
            </v-layout>
        </v-container>

</template>

<script>

  export default {
    name: "Footer",
    data() {
      return {
        footer: [],
      }
    },
    created() {
      this.$http.get('api/footer.json')
          .then(response => {
                return response.json();
                // for (let home in response.data) {
                //     this.homepage.push(response.data[home])
                // }
                //console.log(response)
              }, response => {
                console.log(response)
              }
          )
          .then(response => {
            this.footer = response;
          });
    },
  }
</script>

<style scoped lang="scss">

</style>
