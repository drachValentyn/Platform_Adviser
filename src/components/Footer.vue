<template>
    <v-layout row justify-center>
        <div class="footer">
            <p>Creared by Pixel Grow — Design & Development Studio
            </p>
        </div>
    </v-layout>
</template>

<script>

  export default {
    name: "Footer",
    data() {
      return {
        footer: '',
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
          );

    },
  }
</script>

<style scoped>

</style>
