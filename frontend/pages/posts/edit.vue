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
  import firebase from '@/plugins/firebase'
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
        
        firebase.firestore().collection("posts").add({
          title: this.title,
          content: this.content
        })
        .then((docRef) => {
            console.log("Document written with ID: ", docRef.id);
            this.$router.push({ path: `/posts/teamDetail/${docRef.id}` })
        })
        .catch(function(error) {
            console.error("Error adding document: ", error);
        });
      },
    }
  }
</script>