<template lang="pug">
  div
    v-container.mt-5.pa-0.my-0(fluid)
      v-layout(row justify-space-between)
        v-flex.mx-3(xs4 md10 offset-xs4)
          h1.font-weight-bold.font-italic Edit
          p.ma-0 Markdown記法で記入してください。
        v-flex(xs4 md2)
          v-btn(v-on:click="createPost" color="info") POST
    v-form
      v-text-field(v-model="title" label="Title" single-line full-width hide-details)
      v-divider
      v-textarea(v-model="content" label="Content" counter maxlength="1200" full-width single-line height="460px")
</template>

<script>
  export default {
    layout: 'editorLayout',
    data () {
      return {
        title: '',
        content: '',
      }
    },
    methods: {
      createPost: function () {
        this.$axios.post('http://localhost:3000/api/posts', { 
          post: { 
            title: this.title,
            content: this.content
          } })
          .then((response) => {
          (this.post = response.data)
        }, (error) => {
          console.log(error);
        });
      },
    }
  }
</script>