<template>
    <label class="quiz-label">
        <input type="radio"
               v-bind:value="answer_response"
               name="index"
               @change="prev(answer_index)"
               v-on:click="onClick(answer_index, answer_response, answer_question.question_id, answer_question.question_type)"
               v-model="userResponses[index]"
        >
        {{answer_response.answer}}
    </label>
</template>

<script>
    export default {
        name: "Answers",
        props: ['answer_response', 'answer_question', 'answer_index', 'index', 'chosen', 'userResponses', 'onClick', 'prev', 'next' ]
    }
</script>
