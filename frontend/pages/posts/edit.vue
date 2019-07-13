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
        images: "",
      }
    },
    methods: {
      createPost: function () {
        let storage = firebase.storage().ref().child(this.images[0].name).put(this.images[0]).then(function(snapshot) {
          console.log('Uploaded a blob or file!');
        });
        firebase.firestore().collection("posts").add({
          title: this.title,
          content: this.content
        })
        .then(function(docRef) {
            console.log("Document written with ID: ", docRef.id);
        })
        .catch(function(error) {
            console.error("Error adding document: ", error);
        });
      },
      detectFiles(e) {
        // アップロード対象は1件のみとする
        const file = (e.target.files || e.dataTransfer.files)[0]
        if (file) {
          const fileName = uuid()

          this.$store
            .dispatch('personas/uploadImage', {
              name: fileName,
              file: file
            })
            .then(url => {
              // アップロード完了処理 (ローカルメンバに保存したり)
              this.fileName = fileName
              this.imageUrl = url
            })
        }
      },
      fileUpload(){
        // let storage = firebase.storage();
        this.images = event.target.files;
        console.log(this.images);

        // const fr = new FileReader();
        // fr.readAsDataURL(files[0]);
        // fr.addEventListener("load", () => {
        //   this.imageUrl = fr.result;
        //   this.imageFile = files[0]; // this is an image file that can be sent to server...
        // });
      }
    }
  }
</script>