<template lang="pug">
  div
    v-container.mt-5.pa-0.my-0(fluid)
      v-layout(row justify-space-between)
        v-flex.mx-3(xs4 md10 offset-xs4)
          h1.font-weight-bold.font-italic Edit
          p.ma-0 サムネイル
          input(type="file", :multiple="false", accept="image/*", @change="fileUpload()")
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
  import uuid from 'uuid'
  export default {
    layout: 'editorLayout',
    data () {
      return {
        title: '',
        content: '',
        thumbnail: '',
      }
    },
    methods: {
      createPost: function () {
        let uuidFileName = uuid();
        let storage = firebase.storage().ref()
                              .child(uuidFileName)
                              .put(this.thumbnail[0])
                              .then(function(snapshot) {
                                console.log('FILE NAME => uuid: ',this.thumbnail[0].name, 'アップロード完了');
                              });
        firebase.firestore().collection("posts").add({
          title: this.title,
          content: this.content,
          thumbnail: uuidFileName,
          thumbnailName: this.thumbnail[0].name
        })
        .then((docRef) => {
            console.log("Document written with ID: ", docRef.id);
            this.$router.push({ path: `/posts/teamDetail/${docRef.id}` })
        })
        .catch(function(error) {
            console.error("Error adding document: ", error);
        });
      },
      fileUpload(){
        this.thumbnail = event.target.files;
        console.log(this.thumbnail);
      }
    }
  }
</script>