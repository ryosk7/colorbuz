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
      v-text-field(label="Title" single-line full-width hide-details)
      v-divider
      v-textarea(v-model="newPost" label="Content" counter maxlength="1200" full-width single-line height="460px")
</template>

<script>
  import axios from 'axios';

  export default {
    layout: 'editorLayout',
    data () {
      return {
        content: '',
        posts: [],
        newPost: ''
      }
    },
    methods: {
      createPost: function () {
        if (!this.newPost) return;
        axios.post('localhost:3000/api/posts', { post: { name: this.newPost } }).then((response) => {
          this.posts.unshift(response.data.post);
          this.newPost = '';
        }, (error) => {
          console.log(error);
        });
      },
    }
  }
</script>