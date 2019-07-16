<template>
  <div class="hello">
    <img src="/assets/logo.png" />
    <h1>{{ msg }}</h1>
    <p>You're viewing11 the <code>&#060;HelloWorld&#062;</code> component!</p>


    <p>Passing in some data from twig:</p>
    <router-link color="success" to="/contact">ContactForm</router-link>

<!--    <code>-->
<!--      Craft Version: {{ info.craftVersion }} (passed in as prop)<br />-->
<!--      Environment: {{ info.environment }} (passed in as prop)<br />-->
<!--      DB Name11: <slot></slot> (passed in through slot)-->
<!--    </code>-->
  </div>
</template>

<script>
export default {
  name: "HelloWorld",
  props: ["info"],
  data() {
    return {
      msg: "Hello World"
    };
  },


};

</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1,
h2 {
  font-weight: normal;
}
</style>
