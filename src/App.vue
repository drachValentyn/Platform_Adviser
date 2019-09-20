<template>
    <v-app>
        <v-content>
            <vue-page-transition>
                <router-view/>
            </vue-page-transition>
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
                // next();
            }
        }
    }
</script>

<style>

</style>
