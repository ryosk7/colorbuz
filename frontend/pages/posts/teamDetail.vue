<template lang="pug">
  div
    v-container()
      v-layout(row wrap justify-start)
        v-flex(v-for="card in cards" :key="card.title" xs12)
          v-img(height="340px" :src="card.src")
          v-layout(row justify-end)
            v-flex(offset-md9 md3)
              v-btn(icon)
                v-icon favorite
              v-btn(icon)
                v-icon bookmark
              v-btn(icon)
                v-icon share
          hr
          p.display-1.font-weight-bold.ma-2 {{card.title}}
          br
          p.ma-2.headline.font-weight-regular {{card.content}}
          
</template>

<script>
  import HeaderNav from '~/components/navigation'
  import firebase from '@/plugins/firebase'
  export default {
    data () {
      console.log(`id`,this.$route.params.id)
      return {
        items: [
          {
            src: 'https://cdn.vuetifyjs.com/images/carousel/squirrel.jpg'
          },
        ],
        height: 300,
        cards: []
      }
    },
    methods: {
      async postsFunction() {
        //this.posts = await this.$axios.$get('/posts')

        firebase.firestore().collection("posts").doc(this.$route.params.id).get().then((doc) => {
          if (doc.exists) {
            console.log("firebase_get_id: ", doc.id);
            console.log("title", doc.data().title);
            console.log("content", doc.data().content);
            this.cards = [
              { title: doc.data().title, src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', content: doc.data().content},
            ]
          } else {
            // doc.data() will be undefined in this case
            console.log("No such document!");
          }
        })
      }
    },
    mounted(){
      this.postsFunction()
    }
  }
</script>