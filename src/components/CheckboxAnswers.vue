<template>
    <label class="quiz-label">
        <input type="checkbox"
               v-bind:value="answer_response"
               name="index"
               v-bind:id="answer_index"
               v-on:click="onClickCheckbox(index, answer_index, answer_response, dependent_question_id, dependent_question_title, checkedAnswers); activateButton();"
               v-model="checkboxResponses[answer_response.answer]"
        >

        {{answer_response.answer}}
    </label>
</template>

<script>
    export default {
        name: "CheckboxAnswers",
        props: ['answer_response', 'answer_index', 'onClickCheckbox', 'activateButton', 'index', 'checkboxResponses', 'dependent_question_id', 'dependent_question_title' ,'checkedAnswers' ]
    }
</script>