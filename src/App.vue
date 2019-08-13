<template>
    <v-app>
        <v-content>
            <router-view></router-view>
        </v-content>
    </v-app>

</template>

<script>
    export default {
        name: "App",
        data () {
            return {
            }
        },
        mounted() {
            document.title = this.$route.meta.title;
        },
        watch: {
            $route(to, from, next) {
                document.title = to.meta.title;
                console.log(to.meta.title)
                // next();
            }
        }
    }
</script>

<style scoped>

</style>
